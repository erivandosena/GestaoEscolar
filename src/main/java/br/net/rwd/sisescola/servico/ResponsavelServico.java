package br.net.rwd.sisescola.servico;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.net.rwd.sisescola.dao.ResponsavelDAO;
import br.net.rwd.sisescola.entidade.Responsavel;
import br.net.rwd.sisescola.util.Uteis;

@Service("responsavelServico")
public class ResponsavelServico {

	@Autowired
	private ResponsavelDAO dao;
	
	public Responsavel incluir(Responsavel responsavel) {
		return dao.adicionar(responsavel);
	}
	
	public void alterar(Responsavel responsavel) {
		dao.atualizar(responsavel);
	}

	public void excluir(Responsavel responsavel) {
		dao.remover(responsavel);
	}

	public Responsavel selecionarPorTipo(Integer i) {
		return dao.obterEntidade(Responsavel.class, i);
	}

	public List<Responsavel> listarPorNome(String s) {
		return dao.obterLista(Responsavel.class, "SELECT r FROM Responsavel r WHERE upper(r.respNome) like ?1", "%"+ s.toUpperCase() + "%");
	}
	
	public List<Responsavel> listarPorCpf(String s) {
		return dao.obterLista(Responsavel.class, "SELECT r FROM Responsavel r WHERE r.respCpf = ?1", Uteis.formataCPF(s));
	}

	public List<Responsavel> listarTodos() {
		return dao.obterLista(Responsavel.class, "SELECT r FROM Responsavel r ORDER BY r.respCod ASC");
	}
	
	public Responsavel selecionarPorCpf(String cpf) {
		return dao.obterEntidade(Responsavel.class, "SELECT r FROM Responsavel r WHERE r.respCpf = ?1", Uteis.formataCPF(cpf));
	}
	
	public boolean selecionarResponsavelExistente(String cpf) {
		if (selecionarPorCpf(cpf) != null)
			return true;
		else
			return false;
	}
}
