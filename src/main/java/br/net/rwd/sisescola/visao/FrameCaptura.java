package br.net.rwd.sisescola.visao;

import java.awt.Component;
import java.awt.Graphics2D;
import java.awt.Image;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

import javax.imageio.ImageIO;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JLabel;
import javax.swing.JOptionPane;

import net.miginfocom.swing.MigLayout;
import br.net.rwd.sisescola.util.AreaRecorte;
import br.net.rwd.sisescola.util.Recorte;
import de.humatic.dsj.DSCapture;
import de.humatic.dsj.DSFilterInfo;
import de.humatic.dsj.DSFiltergraph;

public class FrameCaptura extends javax.swing.JDialog  {

	private static final long serialVersionUID = 1L;

    private DSFilterInfo dsfi = null;
    private DSCapture dscap = null;
	private List<DSFilterInfo> filterInfoList = null;
	private HashMap<String, DSFilterInfo> hashCams = new HashMap<String, DSFilterInfo>();
	private JComboBox cmbCameras = new JComboBox();
	private JButton btnCapturar;
	
	AreaRecorte area = null;
	Recorte recorte = null;
    
	public FrameCaptura() {
		super();
		chargeCams();
		initGUI();
	}
	
	private void initGUI() {
		try {
			getContentPane().setLayout(new MigLayout("", "[]", "[][][][][][][]"));
			setSize(660, 400);
			setResizable(false);
			setModal(true);
			setTitle("Captura de Imagem");
			
			Component content = FramePrincipal.getInstanciaPrincipal().getContentPane();  
			int x = (content.getWidth() - getWidth()) / 2;  
			int y = (content.getHeight() - getHeight()) / 2;
			setLocation(x, y);
			
			btnCapturar = new JButton("Fotografar");
			btnCapturar.addActionListener(new ActionListener() {
				public void actionPerformed(ActionEvent arg0) {

					Image imagem = dscap.getImage();
					BufferedImage bi = new BufferedImage(imagem.getWidth(null), imagem.getHeight(null), BufferedImage.TYPE_INT_ARGB);
					Graphics2D g2d = (Graphics2D) bi.getGraphics();
					g2d.drawImage(imagem, 0, 0, null);
					g2d.dispose();

					try {
						ImageIO.write(bi, "png", new File(System.getProperty("java.io.tmpdir") + "imgCap.png"));
						recorte = new Recorte(ImageIO.read(new File(System.getProperty("java.io.tmpdir") + "imgCap.png")));
						repaint();
					} catch (IOException ioe) {
						ioe.printStackTrace();
					}
					
				}
			});
			btnCapturar.setEnabled(false);
			getContentPane().add("cell 0 2,growx", btnCapturar);

			cmbCameras.addActionListener(new java.awt.event.ActionListener() {
				public void actionPerformed(java.awt.event.ActionEvent evt) {
					selecionaCamera();
				}
			});

			JLabel lblSeleoDaCmera = new JLabel("Seleção da Câmera:");
			getContentPane().add(lblSeleoDaCmera, "cell 0 0");
			getContentPane().add("cell 0 0,growx", cmbCameras);
			
			JButton btnFechar = new JButton("Fechar");
			btnFechar.addActionListener(new ActionListener() {
				public void actionPerformed(ActionEvent arg0) {
					dispose();
				}
			});
			getContentPane().add(btnFechar, "cell 0 6,alignx center");

			selecionaCamera();
			
			getContentPane().add("cell 0 4,alignx center", dscap.asComponent());

			recorte = new Recorte(dscap.getImage());
			area = new AreaRecorte(recorte);
			recorte.addMouseListener(area);
			recorte.addMouseMotionListener(area);
			getContentPane().add("cell 0 4,alignx center", recorte);
		    getContentPane().add("cell 0 5,alignx center", recorte.getUIPanel());

			repaint();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	private void selecionaCamera() {
		if (cmbCameras.getSelectedIndex() > -1) {
			btnCapturar.setEnabled(true);

			dsfi = hashCams.get(cmbCameras.getSelectedItem().toString());
			dscap = new DSCapture(DSFiltergraph.RENDER_NATIVE, dsfi, false,DSFilterInfo.doNotRender(), null);

		} else {
			btnCapturar.setEnabled(false);
			JOptionPane.showMessageDialog(null, "Nenhuma câmera localizada!");
		}
	}

	private List<DSFilterInfo> getVideoDevices() {
		DSFilterInfo[][] lista = null;
		try {
			lista = DSCapture.queryDevices();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return Arrays.asList(lista[0]);
	}

	private void chargeCams() {
		try {
			filterInfoList = getVideoDevices();
			if (filterInfoList.size() > 0) {
				for (int i = 0; i < filterInfoList.size(); i++) {
					if (!filterInfoList.get(i).getName().equalsIgnoreCase("none")) {
						cmbCameras.addItem(filterInfoList.get(i).getName());
					}
				}
			} 
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
