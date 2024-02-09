package br.net.rwd.sisescola.util;

import java.util.List;

import javax.swing.JButton;

public class ControlesSwing {

	/**
	 * 
	 * @param btnNovo
	 * @param btnSalvar
	 * @param btnAlterar
	 * @param btnExcluir
	 * @param btnAnular
	 * @param btnPrimeiro
	 * @param btnAnterior
	 * @param btnProximo
	 * @param btnUltimo
	 * @param lista
	 * @param posicao
	 * @param str
	 */
	public static void botoesControle(
			JButton btnNovo, 
			JButton btnSalvar, 
			JButton btnAlterar, 
			JButton btnExcluir, 
			JButton btnAnular, 
			JButton btnPrimeiro, 
			JButton btnAnterior, 
			JButton btnProximo, 
			JButton btnUltimo, 
			List<?> lista, 
			int posicao, 
			String... str) {

		String acao = null;
		for (String arg : str) {
			acao = arg;
		}
		// estado inicial ou salvar ou excluir ou anular(cancelar)
		if (acao == null || acao.equals("S") || acao.equals("E") || acao.equals("C")) {
			btnNovo.setEnabled(true);
			btnSalvar.setEnabled(false);
			btnAlterar.setEnabled(lista.isEmpty() ? false : true);
			btnExcluir.setEnabled(lista.isEmpty() ? false : true);
			btnAnular.setEnabled(false);

		} else {
			// novo ou alterar
			if ("N".equals(acao) || "A".equals(acao)) {
				btnNovo.setEnabled(false);
				btnSalvar.setEnabled(true);
				btnAlterar.setEnabled(false);
				btnExcluir.setEnabled(false);
				btnAnular.setEnabled(true);
			}
		}
		// navegacao
		if (lista.isEmpty() || btnAnular.isEnabled()) {
			btnPrimeiro.setEnabled(false);
			btnAnterior.setEnabled(false);
			btnProximo.setEnabled(false);
			btnUltimo.setEnabled(false);
		} else {
			// estado botoes navegacao
			btnPrimeiro.setEnabled(!(posicao == 0));
			btnAnterior.setEnabled(!(posicao < 1));
			btnProximo.setEnabled(!(posicao > lista.size() - 2));
			btnUltimo.setEnabled(!(posicao == lista.size() - 1));
		}
	}
}
