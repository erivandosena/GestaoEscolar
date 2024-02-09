package br.net.rwd.sisescola.enumerado;

public enum Nacionalidade {

	AFEGANISTÃO("Afegã(o)"),
	ALBÂNIA("Albanês(a)"),
	ALEMANHA("Alemã(o)"),
	ANGOLA("Angolano(a)"),
	ARGÉLIA("Argelino(a)"),
	ARGENTINA("Argentino(a)"),
	AUSTRÁLIA("Australiano(a)"),
	ÁUSTRIA("Austríaco(a)"),
	BÉLGICA("Belga"),
	BRASIL("Brasileiro(a)"),
	BULGÁRIA("Búlgaro(a)"),
	CABO_VERDE("Cabo-verdiano(a)"),
	CANADÁ("Canadiano(a)"),
	CHILE("Chileno(a)"),
	CHINA("Chinês(a)"),
	CHIPRE("Cipriota"),
	COLÔMBIA("Colombiano(a)"),
	CROÁCIA("Croata"),
	CUBA("Cubano(a)"),
	DINAMARCA("Dinamarquês(a)"),
	ESLOVÁQUIA("Eslovaco(a)"),
	ESLOVÊNIA("Esloveno(a)"),
	ESPANHA("Espanhol(a)"),
	FINLÂNDIA("Finlandês(a)"),
	FRANÇA("Francês(a)"),
	GRÉCIA("Grego(a)"),
	GUINÉ("Guineense"),
	HOLANDA("Holandês(a)"),
	HUNGRIA("Húngaro(a)"),
	ÍNDIA("Indiano(a)"),
	INDONÉSIA("Indoneso(a)"),
	REINO_UNIDO("Inglês(a)"),
	IRÃO("Iraniano(a)"),
	IRAQUE("Iraquiano(a)"),
	IRLANDA("Irlandês(a)"),
	ISLÂNDIA("Islandês(a)"),
	ISRAEL("Israelita"),
	ITÁLIA("Italiano(a)"),
	JAPÃO("Japonês(a)"),
	JORDÂNIA("Jordano(a)"),
	KOSOVO("Kosovar"),
	LÍBANO("Libanês(a)"),
	LÍBIA("Líbio(a)"),
	LITUÂNIA("Lituano(a)"),
	LUXEMBURGO("Luxemburguês(a)"),
	MARROCOS("Marroquino(a)"),
	MÉXICO("Mexicano(a)"),
	MOÇAMBIQUE("Moçambicano(a)"),
	MONTENEGRO("Montenegrino(a)"),
	NOVA_ZELÂNDIA("Neozelandês(a)"),
	NIGÉRIA("Nigeriano(a)"),
	ESTADOS_UNIDOS("Americano(a)"),
	COREIA_DO_NORTE("Norte-coreano(a)"),
	NORUEGA("Norueguês(a)"),
	PAQUISTÃO("Paquistanês(a)"),
	POLÔNIA("Polaco(a)"),
	PORTUGAL("Português(a)"),
	QUÉNIA("Queniano(a)"),
	ROMÊNIA("Romeno(a)"),
	RUANDA("Ruandês(a)"),
	RÚSSIA("Russo(a)"),
	SÃO_TOMÉ_E_PRÍNCIPE("Santomense"),
	SENEGAL("Senegalês(a)"),
	SÍRIA("Sírio(a)"),
	SOMÁLIA("Somalí"),
	SUDÃO("Sudanês(a)"),
	SUÉCIA("Sueco(a)"),
	SUÍÇA("Suíço(a)"),
	ÁFRICA_DO_SUL("Sul-africano(a)"),
	COREIA_DO_SUL("Sul-coreano(a)"),
	TAILÂNDIA("Tailandês(a)"),
	TIMOR_LESTE("Timorense"),
	TUNÍSIA("Tunisino(a)"),
	TURQUIA("Turco(a)"),
	UCRÂNIA("Ucraniano(a)"),
	VENEZUELA("Venezuelano(a)"),
	VIETNAME("Vietnamita");
	
	private String nacionalidade;

	Nacionalidade(String nacionalidade) {
		this.nacionalidade = nacionalidade;
	}

	public String getNacionalidade() {
		return nacionalidade;
	}
	
	@Override
	public String toString() {
		return nacionalidade.toUpperCase();
	}
}
