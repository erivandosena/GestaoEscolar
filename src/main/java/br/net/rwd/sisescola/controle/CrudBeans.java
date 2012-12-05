package br.net.rwd.sisescola.controle;


public interface CrudBeans<T> {

	public void incluir();

	public void salvar();

	public void atualizar();

	public void excluir();

	public void filtrar(String filtro);

	public String retornar();
	
}
