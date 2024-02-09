package br.net.rwd.sisescola.enumerado;

public enum Afirmacao {

	N("Não"), S("Sim");
	
	private final String afirmacao;
	
	Afirmacao (String afirmacao) {
		this.afirmacao = afirmacao;
	}
	
	public String getAfirmacao() {
		return afirmacao;
	}
	
	@Override
	public String toString() {
		return afirmacao.toUpperCase();
	}
}
