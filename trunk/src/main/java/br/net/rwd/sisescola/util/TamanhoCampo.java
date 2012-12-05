package br.net.rwd.sisescola.util;

import javax.swing.text.AttributeSet;
import javax.swing.text.BadLocationException;
import javax.swing.text.PlainDocument;

public class TamanhoCampo extends PlainDocument {

	private static final long serialVersionUID = 1L;

	private int max = 0;

	public TamanhoCampo() {
		this.max = 1;
	}

	public TamanhoCampo(int max) {
		this.max = max;
	}

	@Override
	public void insertString(int offs, String str, AttributeSet a) throws BadLocationException {
		// verifica string que esta sendo inserida para que nao exceda o comprimento maximo
		if (getLength() + str.length() > max) {
			// se isso acontecer, entao trunca
			str = str.substring(0, max - getLength());
		}
		super.insertString(offs, str, a);
	}

}
