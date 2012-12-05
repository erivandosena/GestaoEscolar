package br.net.rwd.sisescola.util;

import java.io.Reader;
import java.io.StringReader;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.swing.text.Document;
import javax.swing.text.EditorKit;
import javax.swing.text.html.HTMLEditorKit;

public class Uteis {

	// data formato: 2010
	public static String getAnoAtual() {
		Date hoje = Calendar.getInstance().getTime();
		SimpleDateFormat formato = new SimpleDateFormat("yyyy");
		String formatoSaida = formato.format(hoje);
		return formatoSaida;
	}

	// data formato: 16/12/10
	public static String getDataCurta() {
		Date dt = new Date();
		DateFormat df = DateFormat.getDateInstance(DateFormat.SHORT);
		return df.format(dt);
	}

	// data formato: 16/12/2010
	public static String getDataAbreviada() {
		Date dt = new Date();
		DateFormat df = DateFormat.getDateInstance(DateFormat.MEDIUM);
		return df.format(dt);
	}

	// data formato: 16 de Dezembro de 2010
	public static String getDataLonga() {
		Date dt = new Date();
		DateFormat df = DateFormat.getDateInstance(DateFormat.LONG);
		return df.format(dt);
	}

	// data formato: Quinta-feira, 16 de Dezembro de 2010
	public static String getDataCompleta() {
		Date dt = new Date();
		DateFormat df = DateFormat.getDateInstance(DateFormat.FULL);
		return df.format(dt);
	}
	
	//html para texto
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
}
