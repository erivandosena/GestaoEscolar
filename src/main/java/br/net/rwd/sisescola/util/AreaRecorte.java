package br.net.rwd.sisescola.util;

import java.awt.Point;
import java.awt.event.MouseEvent;

import javax.swing.event.MouseInputAdapter;

public class AreaRecorte extends MouseInputAdapter {
	Recorte recorte;
	Point offset;
	boolean dragging;

	public AreaRecorte(Recorte r) {
		recorte = r;
		offset = new Point();
		dragging = false;
	}

	public void mousePressed(MouseEvent e) {
		Point p = e.getPoint();
		if (recorte.clip.contains(p)) {
			offset.x = p.x - recorte.clip.x;
			offset.y = p.y - recorte.clip.y;
			dragging = true;
		}
	}

	public void mouseReleased(MouseEvent e) {
		dragging = false;
	}

	public void mouseDragged(MouseEvent e) {
		if (dragging) {
			int x = e.getX() - offset.x;
			int y = e.getY() - offset.y;
			recorte.setClip(x, y);
		}
	}
}