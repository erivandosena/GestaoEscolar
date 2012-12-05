package br.net.rwd.sisescola.visao;

import java.awt.Dimension;
import java.awt.Rectangle;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.WindowConstants;

import org.apache.log4j.Level;
import org.apache.log4j.Logger;

public class FrameLogin extends javax.swing.JFrame {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	* Auto-generated main method to display this JFrame
	*/
	
	public FrameLogin() {
		super();

		getContentPane().setLayout(null);
		
		JButton btnEntrar = new JButton("Entrar");
		btnEntrar.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
		        try {
		         //   boolean valid = dao.isValidUserAndPassword(txtUser.getText(), txtPassword.getText());
		            if (false) {
		            //    JOptionPane.showMessageDialog(this,"Login/Password invalid !","Login/Password invalid !",JOptionPane.ERROR_MESSAGE);
		                return;
		            }
		            setVisible(false);
		            
		            FramePrincipal.getInstancia().setVisible(true);
		            //new FramePrincipal().setVisible(true);
		        } catch (Exception ex) {
		            Logger.getLogger(FrameLogin.class.getName()).log(Level.ERROR, null, ex);
		        }
			}
		});
		btnEntrar.setBounds(58, 111, 89, 23);
		getContentPane().add(btnEntrar);
		
		JButton btnSair = new JButton("Sair");
		btnSair.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				System.exit(0);
			}
		});
		btnSair.setBounds(231, 111, 89, 23);
		getContentPane().add(btnSair);
		initGUI();
	}
	
	private void initGUI() {
		try {
			setDefaultCloseOperation(WindowConstants.DISPOSE_ON_CLOSE);
			setPreferredSize(new Dimension(400, 300));
			setBounds(new Rectangle(0, 0, 400, 300));
			
		} catch (Exception e) {
		    //add your error handling code here
			e.printStackTrace();
		}
	}

}
