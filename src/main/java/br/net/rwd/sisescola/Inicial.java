package br.net.rwd.sisescola;

import javax.swing.SwingUtilities;
import javax.swing.UIManager;
import javax.swing.UnsupportedLookAndFeelException;

import org.apache.log4j.Level;
import org.apache.log4j.Logger;
import org.springframework.beans.BeansException;

import br.net.rwd.sisescola.visao.FramePrincipal;

public class Inicial extends ApplicationContextProvider {

	private static Logger log = Logger.getLogger(Class.class.getName());

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		System.out.println("Hello World!\nEm 26/11/2012 tudo se iniciou aqui!");

		try {
			//inicia o Spring
			getInstance().getApplicationContext();
		} catch (BeansException be) {
			log.error(be.getMessage(), be);
			System.exit(0);
		}
		
		// Set Look & Feel
        try {
            UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Inicial.class.getName()).log(Level.ERROR, null, ex);
        } catch (InstantiationException ex) {
            Logger.getLogger(Inicial.class.getName()).log(Level.ERROR, null, ex);
        } catch (IllegalAccessException ex) {
            Logger.getLogger(Inicial.class.getName()).log(Level.ERROR, null, ex);
        } catch (UnsupportedLookAndFeelException ex) {
            Logger.getLogger(Inicial.class.getName()).log(Level.ERROR, null, ex);
        }
		
		SwingUtilities.invokeLater(new Runnable() {
			public void run() {
				
				/* ================= temporario durante fase de desenvolvimneto =============== */
		        FramePrincipal.getInstanciaPrincipal().setVisible(true);
		        /* ================= temporario durante fase de desenvolvimneto =============== */
				
		        /*
				FrameLogin frameLogin = new FrameLogin();
				frameLogin.setLocationRelativeTo(null);
				frameLogin.setVisible(true);
				*/
			}
		});
	}

}
