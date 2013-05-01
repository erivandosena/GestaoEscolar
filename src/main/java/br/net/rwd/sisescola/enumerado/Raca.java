package br.net.rwd.sisescola.enumerado;

public enum Raca {

	BRANCA("Branca"), PRETA("Preta"), PARDA("Parda"), AMARELA("Amarela"), INDIGENA("Indígena");

	private final String raca;

	Raca(String raca) {
		this.raca = raca;
	}

	public String getRaca() {
		return raca;
	}

	@Override
	public String toString() {
		return raca.toUpperCase();
	}

}
