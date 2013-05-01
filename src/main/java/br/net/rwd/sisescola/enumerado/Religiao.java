package br.net.rwd.sisescola.enumerado;

public enum Religiao {

	CATOLICA("Católica"),
	EVANGELICA("Evangélica"),
	ESPIRITA("Espírita"),
	TESTEMUNHAS_DE_JEOVA("Testemunhas de Jeová"),
	INDIGENA("Indígena"),
	ATEISMO("Ateísmo"),
	HINDUISMO("Hinduísmo"),
	BUDISMO("Budismo"),
	JUDAISMO("Judaísmo"),
	ORTODOXIA("Ortodoxia"),
	CANDOMBLE("Candomblé"),
	UMBANDA("Umbanda");
	
	private final String religiao;

	Religiao(String religiao) {
		this.religiao = religiao;
	}

	public String getReligiao() {
		return religiao;
	}
	
	@Override
	public String toString() {
		return religiao.toUpperCase();
	}
	
}
