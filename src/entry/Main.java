package entry;

import java.awt.*;
import javax.swing.JFrame;

public class Main extends Canvas {
	
	private static final long serialVersionUID = 1L;

	public void paint(Graphics g) {
		Toolkit t=Toolkit.getDefaultToolkit(); 
		Image menu = t.getImage("src/entry/Menu.png");  
	    g.drawImage(menu, 0, 0,this);  
	}
	
	public static void main(String[] args) {
		Main m = new Main();
		JFrame fr = new JFrame();
		fr.add(m);
		fr.setSize(4000, 4000);
		fr.setVisible(true);
	}
	

}
