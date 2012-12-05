package br.net.rwd.sisescola.controle;

import java.util.Calendar;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import br.net.rwd.sisescola.entidade.Usuario;
import br.net.rwd.sisescola.servico.UsuarioServico;
import br.net.rwd.sisescola.util.Criptografia;

@Component
public class UsuarioBean implements CrudBeans<Object> {
	
	@Autowired
	private UsuarioServico model;

	private Usuario usuario;
	private List<Usuario> usuarios;
	private boolean modoEdicao;
	private boolean modoEdicaoPerfil;

	private Integer usu_cod;
	private String usu_nome; 
	private String usu_email;
	private String usu_usuario;
	private String usu_senha;
	
	private String confirmaSenha;
	private String loginExistente;
	
	/* ------------------------------------------------- */
	private String senhaExistente;
	/* ------------------------------------------------- */

	public UsuarioServico getModel() {
		return model;
	}

	public void setModel(UsuarioServico model) {
		this.model = model;
	}

	public Usuario getUsuario() {
		if (usuario == null) {
			usuario = new Usuario();
		}
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

	public List<Usuario> getUsuarios() {
		if (usuarios == null) {
			usuarios = model.listarUsuarios();
		}
		return usuarios;
	}

	public void setUsuarios(List<Usuario> usuarios) {
		this.usuarios = usuarios;
	}

	public boolean isModoEdicao() {
		return modoEdicao;
	}

	public void setModoEdicao(boolean modoEdicao) {
		this.modoEdicao = modoEdicao;
	}
	
	public boolean isModoEdicaoPerfil() {
		return modoEdicaoPerfil;
	}

	public void setModoEdicaoPerfil(boolean modoEdicaoPerfil) {
		this.modoEdicaoPerfil = modoEdicaoPerfil;
	}
	
	/* ------------------------------------------------- */

	public Integer getUsu_cod() {
		return usu_cod;
	}

	public void setUsu_cod(Integer usu_cod) {
		this.usu_cod = usu_cod;
	}

	public String getUsu_nome() {
		return usu_nome;
	}

	public void setUsu_nome(String usu_nome) {
		this.usu_nome = usu_nome;
	}

	public String getUsu_email() {
		return usu_email;
	}

	public void setUsu_email(String usu_email) {
		this.usu_email = usu_email;
	}

	public String getUsu_usuario() {
		return usu_usuario;
	}

	public void setUsu_usuario(String usu_usuario) {
		this.usu_usuario = usu_usuario;
	}

	public String getUsu_senha() {
		return usu_senha;
	}

	public void setUsu_senha(String usu_senha) {
		this.usu_senha = usu_senha;
	}
	
	public String getConfirmaSenha() {
		return confirmaSenha;
	}

	public void setConfirmaSenha(String confirmaSenha) {
		this.confirmaSenha = confirmaSenha;
	}
	
	public String getLoginExistente() {
		return loginExistente;
	}

	/* ------------------------------------------------- */

	@Override
	public void incluir() {
        this.usuario = new Usuario();
        this.modoEdicao = true;
        this.modoEdicaoPerfil = true;
        //addAvisoMensagem("A senha é obrigatória. Caso não seja informada o sistema irá gerá-la automaticamente!");
	}

	@Override
	public void salvar() {
		// senha automatica
		String senhaAuto = getGeraSenha();

		// compara as senhas digitadas
		if (!usuario.getUsu_senha().equals(this.getConfirmaSenha())) {
			//addAvisoMensagem("Senhas não conferem.");
		} else {
			// remove espacos e mantem o e-mail em minusculo
			String emailUsuario = usuario.getUsu_email().trim().toLowerCase();
			usuario.setUsu_email(emailUsuario);

			// criptografia da senha
			if (usuario.getUsu_cod() == null || usuario.getUsu_cod().intValue() == 0) {
				// quando inserindo
				if (usuario.getUsu_senha().trim().isEmpty()) {
					usuario.setUsu_senha(Criptografia.criptografarMD5(senhaAuto));
				} else {
					senhaAuto = usuario.getUsu_senha();
					usuario.setUsu_senha(Criptografia.criptografarMD5(senhaAuto));
				}
			} else {
				// quando atualizando
				if (usuario.getUsu_senha().trim().isEmpty()) {
					// se for administrador gera nova senha
				//	if (getPerfilUsuarioLogado() == "ROLE_ADMINISTRADOR") {
						usuario.setUsu_senha(Criptografia.criptografarMD5(senhaAuto));
					//} else {
				//		senhaAuto = "***** (Sem alteração.)";
						usuario.setUsu_senha(senhaExistente);
				//	}
				} else {
					senhaAuto = usuario.getUsu_senha();
					usuario.setUsu_senha(Criptografia.criptografarMD5(senhaAuto));
				}
			}

			// Verifica se é um insert
			if (usuario.getUsu_cod() == null || usuario.getUsu_cod().intValue() == 0) {
				/*---- NOVO ----*/
				// verifica se ja existe
				if (model.selecionarUsuarioExistente(emailUsuario)) {
				//	addErroMensagem("Usuário existente! Informe outro e-mail.");
				} else {
					
					if (this.usuario.getPer_roles().toString() == "[]") {
					//	addErroMensagem("Selecione o perfil.");
					} else {			
						// inclui perfil do usuario
						usuario.getPer_roles().add(this.usuario.getPer_roles().toString());

						// inclui
						usuario = model.incluirUsuario(usuario);

						// envia email
					//	envia(usuario.getUsu_nome(), usuario.getUsu_email(), senhaAuto,"Seu cadastro para acesso foi criado");

						usuario = new Usuario();
					//	addInfoMensagem("Usuário criado com sucesso.");
						retornar();
					}
				}
			} else {
				/*---- ATUALIZA ----*/
				// verifica se o email foi alterado
				if (!usuario.getUsu_email().equals(loginExistente)) {
					// verifica se ja existe
					if (model.selecionarUsuarioExistente(emailUsuario)) {
					//	addErroMensagem("Usuário existente! Informe outro e-mail.");
					} else {
						// envia email
				//		envia(usuario.getUsu_nome(), usuario.getUsu_email(), senhaAuto, "Seu e-mail do cadastro foi alterado");

						// atualiza com login novo
						//usuario.setUsu_alteracao(new java.sql.Date(Calendar.getInstance().getTimeInMillis()));
						model.alterarUsuario(usuario);
					//	addInfoMensagem("Usuário alterado com sucesso.");
						retornar();
					}
				} else {
					// envia email
				//	envia(usuario.getUsu_nome(), usuario.getUsu_email(), senhaAuto, "Seu cadastro foi alterado");
					
					// atualiza com login antigo
					//usuario.setUsu_alteracao(new java.sql.Date(Calendar.getInstance().getTimeInMillis()));
					model.alterarUsuario(usuario);
				//	addInfoMensagem("Usuário alterado com sucesso.");
					retornar();
				}
			}
		}
	}

	@Override
	public void atualizar() {
		loginExistente = usuario.getUsu_email();
		senhaExistente = usuario.getUsu_senha();
		this.modoEdicao = true;
		this.modoEdicaoPerfil = false;
	}

	@Override
	public void excluir() {
		if (usuario.getUsu_nome().equals("Administrador")) {
			//addErroMensagem("Operação não permitida.");
		} else {
			model.excluirUsuario(usuario);
			retornar();
		}
	}

	@Override
	public void filtrar(String filtro) {
        if (filtro != null && !filtro.isEmpty()) {
            usuarios = model.listarLikeUsuario("%"+filtro+"%");
        } else {
            usuarios = model.listarUsuarios();
        }
	}

	@Override
	public String retornar() {
        this.modoEdicao = false;
        usuarios = model.listarUsuarios();
        return "usuario";
	}
	
	public String atribuiPermissao(Usuario usuario, String perfil) {
		this.usuario = usuario;

		Set<String> permissoes = this.usuario.getPer_roles();
		
		if (permissoes.contains(perfil)) {
			permissoes.remove(perfil);
		} else {
			permissoes.add(perfil);
		}
		return null;
	}
	
	private String getGeraSenha() {
		return String.format("%05x",  (int)(Math.random() * 999999L));
	}

}
