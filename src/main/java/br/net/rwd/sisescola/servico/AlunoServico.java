package br.net.rwd.sisescola.servico;

import java.io.Serializable;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.net.rwd.sisescola.dao.AlunoDAO;
import br.net.rwd.sisescola.dao.DAOGenerico;
import br.net.rwd.sisescola.entidade.Aluno;
import br.net.rwd.sisescola.entidade.Usuario;
import br.net.rwd.sisescola.util.Uteis;

@Service("alunoServico")
public class AlunoServico extends DAOGenerico<Serializable> {

	@Autowired
	private AlunoDAO dao;

	public AlunoDAO getDao() {
		return dao;
	}

	public Aluno incluir(Aluno aluno) {
		return dao.adicionar(aluno);
	}
	
	public void alterar(Aluno aluno) {
		dao.atualizar(aluno);
	}

	public void excluir(Aluno aluno) {
		dao.remover(aluno);
	}

	public Aluno selecionarPorTipo(Integer i) {
		return dao.obterEntidade(Aluno.class, i);
	}

	public Aluno selecionarPorTipo(String... s) {
		// TODO Auto-generated method stub
		return null;
	}

	public Aluno selecionarTodos() {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Aluno> listarPorTipo(Integer i) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Aluno> listarPorAluno(String s) {
		return dao.obterLista(Aluno.class, "SELECT a FROM Aluno a WHERE upper(a.alunNome) like ?1", "%"+ s.toUpperCase() + "%");
	}
	public List<Aluno> listarPorMae(String s) {
		return dao.obterLista(Aluno.class, "SELECT a FROM Aluno a WHERE upper(a.alunNomemae) like ?1", "%"+ s.toUpperCase() + "%");
	}
	public List<Aluno> listarPorPai(String s) {
		return dao.obterLista(Aluno.class, "SELECT a FROM Aluno a WHERE upper(a.alunNomepai) like ?1", "%"+ s.toUpperCase() + "%");
	}
	public List<Aluno> listarPorResponsavel(String s) {
		return dao.obterLista(Aluno.class, "SELECT a FROM Aluno a WHERE upper(a.responsavel.respNome) like ?1", "%"+ s.toUpperCase() + "%");
	}
	public List<Aluno> listarPorCpfResponsavel(String s) {
		return dao.obterLista(Aluno.class, "SELECT a FROM Aluno a WHERE a.responsavel.respCpf = ?1", Uteis.formataCPF(s));
	}

	public List<Aluno> listarTodos() {
		return dao.obterLista(Aluno.class, "SELECT a FROM Aluno a ORDER BY a.alunCod ASC");
	}
	
	public Usuario selecionaAlunoPorMae(String mae, String aluno) {
		return dao.obterEntidade(Usuario.class, "SELECT a FROM Aluno a WHERE a.alunCpfmae = ?1 AND a.alunNome = ?2", mae,aluno);
	}
	
	public boolean selecionarAlunoExistente(String mae, String aluno) {
		if (selecionaAlunoPorMae(mae, aluno) != null)
			return true;
		else
			return false;
	}

}
