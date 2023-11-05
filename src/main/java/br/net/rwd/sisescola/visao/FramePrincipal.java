package br.net.rwd.sisescola.visao;

import java.awt.Color;
import java.awt.Dimension;
import java.awt.Frame;
import java.awt.Graphics;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

import javax.imageio.ImageIO;
import javax.swing.JDesktopPane;
import javax.swing.JMenu;
import javax.swing.JMenuBar;
import javax.swing.JMenuItem;
import javax.swing.JSeparator;

public class FramePrincipal extends javax.swing.JFrame {

	private static final long serialVersionUID = 1L;
	
	private static FramePrincipal instanciaPrincipal;
	private static FrameCaptura instanciaCaptura;
	private static FrameUsuario instanciaUsuario;
	private static FrameAluno instanciaAluno;
	private static FrameResponsavel instanciaResponsavel;
	
	private JDesktopPane desktopPane;
	private JMenuItem mntmSair;
	private JSeparator jSeparator;
	private JMenu mnSistema;
	private JMenuBar jMenuBar1;
	private JMenuItem mntmLiberacao;
	private JMenu mnCadastro;
	private JMenuItem mntmUsuario;
	private JMenuItem mntmAluno;
	private JMenuItem mntmResponsavel;
	
	private BufferedImage img;
	
	public static Integer codResponsavel;

	public static JDesktopPane getDesktopPane() {
		return getInstanciaPrincipal().desktopPane;
	}

	public static FramePrincipal getInstanciaPrincipal() {
		if(instanciaPrincipal == null) {
			instanciaPrincipal = new FramePrincipal();
		}
		return instanciaPrincipal;
	}

	public static FrameCaptura getInstanciaCaptura() {
		if(instanciaCaptura == null) {
			instanciaCaptura = new FrameCaptura();
		}
		return instanciaCaptura;
	}
	
	public static FrameUsuario getInstanciaUsuario() {
		if(instanciaUsuario == null) {
			instanciaUsuario = new FrameUsuario();
		}
		return instanciaUsuario;
	}
	
	public static FrameAluno getInstanciaAluno() {
		if(instanciaAluno == null) {
			instanciaAluno = new FrameAluno();
		}
		return instanciaAluno;
	}
	
	public static FrameResponsavel getInstanciaResponsavel() {
		if(instanciaResponsavel == null) {
			instanciaResponsavel = new FrameResponsavel();
		}
		return instanciaResponsavel;
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
		try {
			img = ImageIO.read(downloadImagem("https://dl.dropboxusercontent.com/u/49305285/53c141cf-1d41-420c-84a4-a50763cf3326.jpg"));
		} catch (Exception ex) {
        	ex.getStackTrace();
        }
	}
	
	private void initGUI() {
		try {
			desktopPane = new JDesktopPane() {
				private static final long serialVersionUID = 1L;

		        @Override
		        public void paintComponent(Graphics g) {
		            super.paintComponent(g);
		            if (img != null) {
		                Dimension dimension = this.getSize();
		                int x = (int)(dimension.getWidth() - img.getWidth(this)) / 2;
		                int y = (int)(dimension.getHeight() - img.getHeight(this)) / 2;

		                g.drawImage(img, x, y, img.getWidth(this), img.getHeight(this), this);
		            } else {
		                g.drawString("Imagem nao encontrada.", 50, 50);
		            }
		        }
				
			}; 
			desktopPane.setBackground(new Color(248, 248, 255));
			desktopPane.setLayout(null);
			//getContentPane().setLayout(null);
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
								getDesktopPane().remove(frameUsuario);
								getDesktopPane().add(frameUsuario);
							    frameUsuario.setVisible(true);
	
							}
						});
						mnCadastro.add(mntmUsuario);
					}
					{
						mntmAluno = new JMenuItem("Aluno");
						mntmAluno.addActionListener(new ActionListener() {
							public void actionPerformed(ActionEvent arg0) {

								FrameAluno frameAluno = getInstanciaAluno();
								getDesktopPane().remove(frameAluno);
								getDesktopPane().add(frameAluno);
							    frameAluno.setVisible(true);
							    

							}
						});
						mntmAluno.setActionCommand("Aluno");
						mnCadastro.add(mntmAluno);
					}
					{
						mntmResponsavel = new JMenuItem("Responsável Financeiro");
						mntmResponsavel.addActionListener(new ActionListener() {
							public void actionPerformed(ActionEvent arg0) {
								
								FrameResponsavel frameResponsavel = getInstanciaResponsavel();
								getDesktopPane().remove(frameResponsavel);
								getDesktopPane().add(frameResponsavel);
							    frameResponsavel.setVisible(true);
							    
							    FramePrincipal.codResponsavel = null;
							}
						});
						mntmResponsavel.setActionCommand("ResponsavelFinanceiro");
						mnCadastro.add(mntmResponsavel);
					}
				}
			}
			desktopPane.setOpaque(false);
			getContentPane().add(desktopPane);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	private URL downloadImagem(String caminho) {  
        URL url = null;  
        HttpURLConnection urlConnection = null;  
        try {  
            url = new URL(caminho);  
            urlConnection = (HttpURLConnection) url.openConnection();  
            urlConnection.setUseCaches(true); 
            return urlConnection.getURL();  
        } catch (IOException ioe) {  
            ioe.getStackTrace();  
            return null;  
        } finally {  
            urlConnection.disconnect();  
            url = null;  
        }  
    }  
}
