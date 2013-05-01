package br.net.rwd.sisescola.enumerado;

public enum Estado {

	ACRE("AC"),
	ALAGOAS("AL"),
	AMAPA("AP"),
	AMAZONAS("AM"),
	BAHIA("BA"),
	CEARA("CE"),
	DISTRITO_FEDERAL("DF"),
	ESPIRITO_SANTO("ES"),
	GOIAS("GO"),
	MARANHAO("MA"),
	MATO_GROSSO("MT"),
	MATO_GROSSO_DO_SUL("MS"),
	MINAS_GERAIS("MG"),
	PARA("PA"),
	PARAIBA("PB"),
	PARANA("PR"),
	PERNAMBUCO("PE"),
	PIAUI("PI"),
	RIO_DE_JANEIRO("RJ"),
	RIO_GRANDE_DO_NORTE("RN"),
	RIO_GRANDE_DO_SUL("RS"),
	RONDONIA("RO");

	private final String estado;

	Estado(String estado) {
		this.estado = estado;
	}

	public String getEstado() {
		return estado;
	}

	@Override
	public String toString() {
		return estado.toUpperCase();
	}

}
