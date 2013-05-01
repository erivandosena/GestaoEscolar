package br.net.rwd.sisescola.enumerado;

public enum Certidao {

	NASCIMENTO("Certidão de Nascimento"), CASAMENTO("Certidão de Casamento"), OBITO("Certidão de Óbito");
	
	private final String documento;

	Certidao(String documento) {
		this.documento = documento;
	}

	public String getDocumento() {
		return documento;
	}
	
	@Override
	public String toString() {
		return documento.toUpperCase();
	}
}
