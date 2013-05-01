package br.net.rwd.sisescola.servico;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.net.rwd.sisescola.dao.InstituicaoDAO;
import br.net.rwd.sisescola.entidade.Instituicao;

@Service("instituicaoServico")
public class InstituicaoServico {

	@Autowired
	private InstituicaoDAO dao;
	
	public Instituicao incluir(Instituicao instituicao) {
		return dao.adicionar(instituicao);
	}
	
	public void alterar(Instituicao instituicao) {
		dao.atualizar(instituicao);
	}

	public void excluir(Instituicao instituicao) {
		dao.remover(instituicao);
	}

	public Instituicao selecionarPorTipo(Integer i) {
		return dao.obterEntidade(Instituicao.class, i);
	}

	public List<Instituicao> listarPorTipo(String s) {
		return dao.obterLista(Instituicao.class, "SELECT i FROM Instituicao i WHERE upper(i.instNome) like ?1", "%"+ s.toUpperCase() + "%");
	}

	public List<Instituicao> listarTodos() {
		return dao.obterLista(Instituicao.class, "SELECT i FROM Instituicao i ORDER BY i.instCod ASC");
	}
}
