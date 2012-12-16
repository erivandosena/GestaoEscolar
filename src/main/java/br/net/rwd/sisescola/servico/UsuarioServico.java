package br.net.rwd.sisescola.servico;

import java.io.Serializable;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.net.rwd.sisescola.dao.DAOGenerico;
import br.net.rwd.sisescola.dao.UsuarioDAO;
import br.net.rwd.sisescola.entidade.Usuario;

@Service("usuarioServico")
public class UsuarioServico extends DAOGenerico<Serializable> {

	@Autowired
	private UsuarioDAO dao;
	
	protected void setDao(UsuarioDAO dao) {
		this.dao = dao;
	}
	
	public Usuario incluirUsuario(Usuario usuario) {
		return dao.adicionar(usuario);
	}
	
	public void alterarUsuario(Usuario usuario) {
		dao.atualizar(usuario);
	}
	
	public void excluirUsuario(Usuario usuario) {
		dao.remover(usuario);
	}
	
	public Usuario selecionarUsuario(Integer codigo) {
		return dao.obterEntidade(Usuario.class, codigo);
	}

	public List<Usuario> listarUsuarios() {
		return dao.obterLista(Usuario.class, "SELECT u FROM Usuario u ORDER BY u.usu_cod ASC");
	}

	public List<Usuario> listarLikeUsuario(String nome) {
		return dao.obterLista(Usuario.class, "SELECT u FROM Usuario u WHERE lower(u.usu_nome) like ?1 OR lower(u.usu_usuario) like ?1", "%"+ nome.toLowerCase() + "%");
	}
	
	public Usuario selecionarUsuario(String login) {
		return dao.obterEntidade(Usuario.class, "SELECT u FROM Usuario u WHERE u.usu_usuario = ?1", login);
	}
	
	public boolean selecionarUsuarioExistente(String login) {
		if(selecionarUsuario(login) != null)
			return true;
		else
			return false;
	}

	public Usuario selecionaUsuarioLogin(String usuario, String senha) {
		return dao.obterEntidade(Usuario.class, "SELECT u FROM Usuario u WHERE u.usu_usuario = ?1 AND u.usu_senha = ?2", usuario, senha);
	}
	
	public boolean selecionarUsuarioExistente(String login, String senha) {
		if(selecionaUsuarioLogin(login,senha) != null)
			return true;
		else
			return false;
	}
	
}
