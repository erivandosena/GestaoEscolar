package br.net.rwd.sisescola.enumerado;

public enum Sexo {
	
	F("Feminino"), M("Masculino");

	private final String sexo;

	Sexo(String sexo) {
		this.sexo = sexo;
	}

	public String getSexo() {
		return sexo;
	}

	@Override
	public String toString() {
		return sexo.toUpperCase();
	}
}
