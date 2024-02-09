package br.net.rwd.sisescola.util;

import java.awt.Component;
import java.awt.Container;
import java.io.Reader;
import java.io.StringReader;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Random;

import javax.swing.JComboBox;
import javax.swing.JFormattedTextField;
import javax.swing.JPasswordField;
import javax.swing.JTextArea;
import javax.swing.JTextField;
import javax.swing.text.Document;
import javax.swing.text.EditorKit;
import javax.swing.text.html.HTMLEditorKit;

public class Uteis {

	/**
	 * Retorna uma String com o ano de uma data no formato: 2010
	 * 
	 * @return String
	 */
	public static String getAnoAtual() {
		Date hoje = Calendar.getInstance().getTime();
		SimpleDateFormat formato = new SimpleDateFormat("yyyy");
		String formatoSaida = formato.format(hoje);
		return formatoSaida;
	}

	/**
	 * Retorna uma String de data no formato: 16/12/10
	 * 
	 * @return String
	 */
	public static String getDataCurta() {
		Date dt = new Date();
		DateFormat df = DateFormat.getDateInstance(DateFormat.SHORT);
		return df.format(dt);
	}

	/**
	 * Retorna uma String de data no formato: 16/12/2010
	 * 
	 * @return String
	 */
	public static String getDataAbreviada() {
		Date dt = new Date();
		DateFormat df = DateFormat.getDateInstance(DateFormat.MEDIUM);
		return df.format(dt);
	}

	/**
	 * Retorna uma String de data no formato: 16 de Dezembro de 2010
	 * 
	 * @return String
	 */
	public static String getDataLonga() {
		Date dt = new Date();
		DateFormat df = DateFormat.getDateInstance(DateFormat.LONG);
		return df.format(dt);
	}

	/**
	 * Retorna uma String de data no formato: Quinta-feira, 16 de Dezembro de 2010
	 * 
	 * @return String
	 */
	public static String getDataCompleta() {
		Date dt = new Date();
		DateFormat df = DateFormat.getDateInstance(DateFormat.FULL);
		return df.format(dt);
	}
	
	/**
	 * Converte o código HTML passado pelo parametro String para texto puro
	 * 
	 * @param html
	 * @return "" vazio
	 */
	public static final String html2text(String html) {
		EditorKit kit = new HTMLEditorKit();
		Document doc = kit.createDefaultDocument();
		doc.putProperty("IgnoreCharsetDirective", Boolean.TRUE);
		try {
			Reader reader = new StringReader(html);
			kit.read(reader, doc, 0);
			return doc.getText(0, doc.getLength());
		} catch (Exception e) {
			return "";
		}
	}
	
	/**
     * Retorna apenas numeros de uma String informada
     * 
     * @param str
     * @return String ou null se vazio
     */
	public static String retornaNumeros(String str) {
		if (str != null) {
			return str.replaceAll("[^0123456789]", "");
		} else {
			return null;
		}
	}
	
	/**
     * Inclui o numero 3 a String informada se igual a 9 caracteres
     * 
     * @param str
     * @return String ou null se vazio
     */
	private static String ajustaNumTelefone(String str) {
		if (str != null)
			if (str.length() == 9)
				return str.substring(0, 2).concat("3").concat(str.substring(2, str.length()));
			else
				return str;
		else
			return null;
	}

	/**
     * Inclui os numeros 00 a String informada se igual a 8 caracteres
     * 
     * @param str
     * @return String ou null se vazio
     */
	public static String ajustaDddTelefone(String str) {
		if (str != null)
			if (str.length() == 8)
				return ajustaNumTelefone("00".concat(str));
			else
				return ajustaNumTelefone(str);
		else
			return null;
	}
	
	/**
	 * Limpa os campos dos componentes contidos no Container
	 * 
	 * @param container
	 */
	public static void limpaCampos(Container container) {
		Component components[] = container.getComponents();
		for (Component component : components) {
			
			if (component instanceof JFormattedTextField) {
				JFormattedTextField field = (JFormattedTextField) component;
				field.setValue(null);
				field.setText(null);
			} 
			
			else if (component instanceof JPasswordField) {
				JPasswordField field = (JPasswordField) component;
				field.setText(null);
			} 
			
			else if (component instanceof JComboBox) {
				JComboBox field = (JComboBox) component;
				field.setSelectedIndex(-1);
			} 
			
			else if (component instanceof JTextField) {
				JTextField field = (JTextField) component;
				field.setText(null);
			} 
			
			else if (component instanceof JTextArea) {
				JTextArea area = (JTextArea) component;
				area.setText(null);
			} 
			
			else if (component instanceof Container) {
				limpaCampos((Container) component);
			}
		}
	}

	/**
	 * Retorna uma senha com letras e numeros atraves do parametro String alfaNum 
	 * e com tamanho definido atraves do parametro inteiro tamanho.
	 * 
	 * @param alfaNum
	 * @param tamanho
	 * @return senha
	 */
	public static String senhaAlphaNumeric(String numLetra, int tamanho) {
		Random rand = new Random();
		StringBuilder buf = new StringBuilder();
		for (int i = 0; i < tamanho; i++) {
			buf.append(numLetra.charAt(rand.nextInt(numLetra.length())));
		}
		return buf.toString();
	}
	
	/**
     * Este método é responsável por gerar uma string randômica composta por
     * números ou letras (maiúsculas e minúsculas).
     * 
     * @param tamanho é o tamanho da string randômica a ser gerada.
     * @return Retorna uma String randômica de tamanho 'tamanho'.
     */
    public static String gerarStringRandomica(int tamanho) {
        Random rand = new Random();
        StringBuffer buf = new StringBuffer();
        String allowedChars = "0123456789abcdefghijklmnopqrstuvwxyz" + "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        int charCount = allowedChars.length();
        int index;
        for (int count = 0; count < tamanho; count++) {
            index = rand.nextInt(charCount);
            buf.append(allowedChars.charAt(index));
        }
        return buf.toString();
    }
    
    /**
     * 
     * @param cpf
     * @return String do número do cpf formatado 999.999.999-99
     */
    public static String formataCPF(String cpf) {
        return cpf.substring(0, 3).concat(".") + cpf.substring(3, 6).concat(".") + cpf.substring(6, 9).concat("-") + cpf.substring(9, cpf.length());
    }

}
