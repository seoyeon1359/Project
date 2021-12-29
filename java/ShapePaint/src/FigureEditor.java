/*java Shape Paint
 *can draw,move,copy,delete Shape 
 *save paint, bring paint File*/

import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
import java.util.ArrayList;
/*FigureEditor is mainClass to implement.*/
public class FigureEditor{  
	public static void main(String[] args) {
		new FigureEditorFrame();
	}
}
/*FigureEditorFrame is main Container class->include&place panel*/
class FigureEditorFrame extends JFrame{
	PanelA panelA; //PanelA���� �ֵ� �̺�Ʈ�� �߻��ϴ� ��������� �Ͽ� �������� �����ϰ�
	FigureEditorFrame(){
		setTitle("Shape Paint");
		setSize(600,300);
		//�г� ���� �� ��ġ ����
		panelA=new PanelA();
		add(panelA,BorderLayout.CENTER);
		add(new PanelC(panelA),BorderLayout.WEST);//�ش� ��ü�� �ѱ�
		setVisible(true);
	}
}
