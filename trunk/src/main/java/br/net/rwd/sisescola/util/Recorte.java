package br.net.rwd.sisescola.util;

import java.awt.Color;
import java.awt.Dimension;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.Rectangle;
import java.awt.RenderingHints;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.image.BufferedImage;
import java.awt.image.RasterFormatException;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

import javax.imageio.ImageIO;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JPanel;

import br.net.rwd.sisescola.visao.FrameAluno;
import br.net.rwd.sisescola.visao.FramePrincipal;

public class Recorte extends JPanel {
	private static final long serialVersionUID = 1L;

	BufferedImage image;
	Dimension size;
	Rectangle clip;
	boolean showClip;

	public Recorte(BufferedImage image) {
		this.image = image;
		size = new Dimension(image.getWidth(), image.getHeight());
		showClip = true;
	}

	protected void paintComponent(Graphics g) {
		super.paintComponent(g);
		Graphics2D g2 = (Graphics2D) g;
		g2.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);
		int x = (getWidth() - size.width) / 2;
		int y = (getHeight() - size.height) / 2;
		g2.drawImage(image, x, y, this);
		if (showClip) {
			if (clip == null)
				createClip();
			g2.setPaint(Color.red);
			g2.draw(clip);
		}
	}

	public void setClip(int x, int y) {
		// keep clip within raster
		int x0 = (getWidth() - size.width) / 2;
		int y0 = (getHeight() - size.height) / 2;
		if (x < x0 || x + clip.width > x0 + size.width || y < y0 || y + clip.height > y0 + size.height)
			return;
		clip.setLocation(x, y);
		repaint();
	}

	public Dimension getPreferredSize() {
		return size;
	}

	private void createClip() {
		clip = new Rectangle(150, 183);
		clip.x = (getWidth() - clip.width) / 2;
		clip.y = (getHeight() - clip.height) / 2;
	}
	
	public ImageIcon clipImagem() {
		BufferedImage clipped = null;
		try {
			int w = clip.width;
			int h = clip.height;
			int x0 = (getWidth() - size.width) / 2;
			int y0 = (getHeight() - size.height) / 2;
			int x = clip.x - x0;
			int y = clip.y - y0;
			clipped = image.getSubimage(x, y, w, h);
		} catch (RasterFormatException rfe) {
			rfe.getStackTrace();
		}
			return new ImageIcon(clipped);
	}

	public JPanel getUIPanel() {
		JButton clip = new JButton("Confirmar Fotografia");
		clip.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				
				FrameAluno frameAluno = FramePrincipal.getInstanciaAluno();
				ImageIcon imgBd = clipImagem();
				//frameAluno.lblFoto.setIcon(imgBd);

				if (frameAluno.aluno != null) {
					BufferedImage buf = new BufferedImage(imgBd.getIconWidth(), imgBd.getIconHeight(), BufferedImage.TYPE_INT_RGB);
					Graphics2D g2 = (Graphics2D) buf.getGraphics();
					g2.drawImage(imgBd.getImage(), 0, 0, null);
					g2.dispose();

					ByteArrayOutputStream bArray = new ByteArrayOutputStream();
					byte[] imageByte = null;
					try {
						ImageIO.write(buf, "jpg", bArray);
						bArray.flush();
						imageByte = bArray.toByteArray();
						bArray.close();
					} catch (IOException ioe) {
						ioe.printStackTrace();
					}
					frameAluno.aluno.setAlunFoto(Redimensiona.novaLargura(imageByte, 110));
					frameAluno.lblFoto.setIcon(new ImageIcon(Redimensiona.novaLargura(imageByte, 110)));
				}
			}
		});
		
		JPanel panel = new JPanel();
		panel.add(clip);
		return panel;
	}

}
