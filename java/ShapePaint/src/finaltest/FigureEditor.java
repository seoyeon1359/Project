/*�ڹ� ���α׷��� �⸻����*/
package finaltest;

/*������ Ŭ������������ �� Ŭ�������� �ۼ��Ͽ���*/
//�ڹ� �̺�Ʈ ���� ���̺귯�� �ҷ���
import javax.swing.*;

import java.awt.*;
import java.awt.event.*;
import java.util.ArrayList;
/*FigureEditor�� ���콺�� �����׸��� �̺�Ʈ�� �����ϴ� ����Ŭ���� �Դϴ�.*/
public class FigureEditor{  
	public static void main(String[] args) {
		new FigureEditorFrame();
	}
}
//FigureEditorFrame Ŭ������ ���� �����̳ʷ�, �гε��� ����, ��ġ�ϴ� Ŭ�����Դϴ�.
class FigureEditorFrame extends JFrame{
	PanelA panelA; //PanelA���� �ֵ� �̺�Ʈ�� �߻��ϴ� ��������� �Ͽ� �������� �����ϰ�
	FigureEditorFrame(){
		setTitle("�⸻ ������Ʈ");
		setSize(600,300);
		//�г� ���� �� ��ġ ����
		panelA=new PanelA();
		add(panelA,BorderLayout.CENTER);
		add(new PanelC(panelA),BorderLayout.WEST);//�ش� ��ü�� �ѱ�
		setVisible(true);
	}
}
