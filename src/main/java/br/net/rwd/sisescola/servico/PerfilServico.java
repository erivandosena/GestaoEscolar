package br.net.rwd.sisescola.servico;

import java.io.Serializable;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.net.rwd.sisescola.dao.DAOGenerico;
import br.net.rwd.sisescola.dao.PerfilDAO;
import br.net.rwd.sisescola.entidade.Perfil;

@Service("perfilServico")
public class PerfilServico extends DAOGenerico<Serializable> {
	
	@Autowired
	private PerfilDAO dao;
	
	protected void setDao(PerfilDAO dao) {
		this.dao = dao;
	}
	
	public Perfil incluirPerfil(Perfil perfil) {
		return dao.adicionar(perfil);
	}
	
	public void alterarPerfil(Perfil perfil) {
		dao.atualizar(perfil);
	}
	
	public void excluirPerfil(Perfil perfil) {
		dao.remover(perfil);
	}

	public List<Perfil> listarPerfis() {
		return dao.obterLista(Perfil.class, "SELECT DISTINCT p.per_role FROM Perfil p");
	}

	public List<Perfil> listarPerfil(String nome) {
		return dao.obterLista(Perfil.class, "SELECT p FROM Perfil p WHERE p.per_nome = ?1", nome);
	}

}
