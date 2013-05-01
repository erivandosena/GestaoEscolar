package br.net.rwd.sisescola.enumerado;

public enum Situacao {

	CADASTRADO("Cadastrado"),
	MATRICULADO("Matriculado"),
	TRANSFERIDO("Transferido"),
	DESISTENTE("Desistente"),
	EVADIDO("Evadido"),
	INATIVO("Inativo");

	private final String situacao;

	Situacao(String situacao) {
		this.situacao = situacao;
	}

	public String getSituacao() {
		return situacao;
	}

	@Override
	public String toString() {
		return situacao.toUpperCase();
	}
	
}
