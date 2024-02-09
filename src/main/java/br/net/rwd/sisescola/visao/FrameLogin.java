package br.net.rwd.sisescola.visao;

import java.awt.Dimension;
import java.awt.Rectangle;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPasswordField;
import javax.swing.JTextField;
import javax.swing.WindowConstants;

import org.apache.log4j.Level;
import org.apache.log4j.Logger;

import br.net.rwd.sisescola.ApplicationContextProvider;
import br.net.rwd.sisescola.servico.UsuarioServico;
import br.net.rwd.sisescola.util.Criptografia;

public class FrameLogin extends javax.swing.JFrame {

	private static final long serialVersionUID = 1L;
	
    private UsuarioServico model = (UsuarioServico) (ApplicationContextProvider.getInstance()).getApplicationContext().getBean("usuarioServico");
	
	private JTextField textUsuario;
	private JPasswordField pTextSenha;

	public FrameLogin() {
		super();
		
		getContentPane().setLayout(null);
		
		JButton btnEntrar = new JButton("Entrar");
		btnEntrar.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
		        try {
					boolean valido = model.selecionarUsuarioExistente(textUsuario.getText(), Criptografia.criptografarMD5(new String(pTextSenha.getPassword())));
		            if (!valido) {
		                JOptionPane.showMessageDialog(null, "Usuário ou senha inválidos!", "Erro de login", JOptionPane.ERROR_MESSAGE, null);
		                return;
		            }
		            setVisible(false);
		            
		            FramePrincipal.getInstanciaPrincipal().setVisible(true);
		            //new FramePrincipal().setVisible(true);
		        } catch (Exception ex) {
		            Logger.getLogger(FrameLogin.class.getName()).log(Level.ERROR, null, ex);
		        }
			}
		});
		btnEntrar.setBounds(128, 146, 89, 23);
		getContentPane().add(btnEntrar);
		
		JButton btnSair = new JButton("Sair");
		btnSair.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				System.exit(0);
			}
		});
		btnSair.setBounds(222, 146, 89, 23);
		getContentPane().add(btnSair);
		
		textUsuario = new JTextField();
		textUsuario.setBounds(128, 75, 183, 20);
		getContentPane().add(textUsuario);
		textUsuario.setColumns(10);
		
		JLabel lblUsuario = new JLabel("Usuário");
		lblUsuario.setBounds(72, 78, 46, 14);
		getContentPane().add(lblUsuario);
		
		JLabel lblSenha = new JLabel("Senha");
		lblSenha.setBounds(72, 107, 46, 14);
		getContentPane().add(lblSenha);
		
		pTextSenha = new JPasswordField();
		pTextSenha.setBounds(128, 104, 183, 20);
		getContentPane().add(pTextSenha);
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
