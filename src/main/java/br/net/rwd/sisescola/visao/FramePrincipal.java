package br.net.rwd.sisescola.visao;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JMenu;
import javax.swing.JMenuBar;
import javax.swing.JMenuItem;
import javax.swing.JSeparator;
import java.awt.Frame;

public class FramePrincipal extends javax.swing.JFrame {

	private static final long serialVersionUID = 1L;
	
	private static FramePrincipal instancia;
	private static FrameUsuario instUsuario;
	
	private JMenuItem mntmSair;
	private JSeparator jSeparator;
	private JMenu mnSistema;
	private JMenuBar jMenuBar1;
	private JMenuItem mntmLiberacao;
	private JMenu mnCadastro;
	private JMenuItem mntmUsuario;

	public static FramePrincipal getInstancia() {
		if(instancia == null) {
			instancia = new FramePrincipal();
		}
		return instancia;
	}
	
	public static FrameUsuario getInstanciaUsuario() {
		if(instUsuario == null) {
			instUsuario = new FrameUsuario();
		}
		return instUsuario;
	}
	
	/*
	public static void main(String[] args) {
		SwingUtilities.invokeLater(new Runnable() {
			public void run() {
				FramePrincipal inst = new FramePrincipal();
				inst.setLocationRelativeTo(null);
				inst.setVisible(true);
			}
		});
	}
	*/
		
	public FramePrincipal() {
		super();
		initGUI();
	}
	
	private void initGUI() {
		try {
			getContentPane().setLayout(null);
			setSize(800, 600);
			setExtendedState(Frame.MAXIMIZED_BOTH);
			setLocationRelativeTo(null);
			{
				jMenuBar1 = new JMenuBar();
				setJMenuBar(jMenuBar1);
				{
					mnSistema = new JMenu();
					jMenuBar1.add(mnSistema);
					mnSistema.setText("Sistema");
					{
						mntmLiberacao = new JMenuItem("Liberação");
						mnSistema.add(mntmLiberacao);
					}
					{
						jSeparator = new JSeparator();
						mnSistema.add(jSeparator);
					}
					{
						mntmSair = new JMenuItem();
						mntmSair.addActionListener(new ActionListener() {
							public void actionPerformed(ActionEvent arg0) {
								System.exit(0);
							}
						});
						mnSistema.add(mntmSair);
						mntmSair.setText("Sair");
					}
				}
				{
					mnCadastro = new JMenu("Cadastro");
					jMenuBar1.add(mnCadastro);
					{
						mntmUsuario = new JMenuItem("Usuário");
						mntmUsuario.addActionListener(new ActionListener() {
							public void actionPerformed(ActionEvent arg0) {
								
								FrameUsuario frameUsuario = getInstanciaUsuario();
								getContentPane().add(frameUsuario);
							    frameUsuario.setVisible(true);
	
							}
						});
						mnCadastro.add(mntmUsuario);
					}
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
