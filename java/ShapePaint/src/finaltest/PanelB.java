package finaltest;

import java.awt.*;
import java.awt.event.*;
import java.io.*;
import java.util.ArrayList;

import javax.swing.JButton;
import javax.swing.JPanel;

//PanelB�� ��ư �̺�Ʈ�� ó���ϴ� Ŭ�����Դϴ�(����� �ҷ�����)
class PanelB extends JPanel{
	PanelA panelA;//��������� PanelA Ŭ������ ����
	PanelB(PanelA panelA){//������ ��ü�� ��� ���� ���޹���
		this.panelA=panelA;
		setLayout(new GridLayout(7,1,5,5));
		setBackground(Color.BLUE);
		JButton btn1=new JButton("�簢");
		JButton btn2=new JButton("����");
		JButton btn3=new JButton("Ÿ��");
		JButton btn4=new JButton("����");
		JButton btn5=new JButton("����");
		JButton btn6=new JButton("����");
		JButton btn7=new JButton("�ҷ�����");
		//�� ��ư�� �̺�Ʈ ������ ����
		BtnActionListener btnclick=new BtnActionListener();
		btn1.addActionListener(btnclick);
		btn2.addActionListener(btnclick);
		btn3.addActionListener(btnclick);
		btn4.addActionListener(btnclick);
		btn5.addActionListener(btnclick);
		btn6.addActionListener(btnclick);
		btn7.addActionListener(btnclick);
		add(btn1);
		add(btn2);
		add(btn3);
		add(btn4);
		add(btn5);
		add(btn6);
		add(btn7);
	}
	//���� Ŭ���� �̺�Ʈ ������-�׼� �̺�Ʈ
	private class BtnActionListener implements ActionListener{
		public void actionPerformed(ActionEvent e) {
			JButton btn=(JButton)e.getSource();
			panelA.selectBtn=btn.getText();//�̺�Ʈ �߻� ��ư�� �ؽ�Ʈ�� ���� 
			if(btn.getText()=="����") {
				saveObjectToFile(panelA.shapes,"output.txt");
			}else if(btn.getText()=="�ҷ�����") {
				panelA.shapes=loadObjectFromFile("output.txt");
				panelA.repaint(); //�ҷ��� ��ü�迭�� �׷���
			}
		}
		//output.txt�� shapes ���� ����:��ü ��Ʈ��
		public static void saveObjectToFile(ArrayList<Shape>shapes,String fileName) {
			try {
				ObjectOutputStream out=new ObjectOutputStream(new FileOutputStream(fileName));
				out.writeObject(shapes);
			} catch (FileNotFoundException e) {
				e.printStackTrace();
			} catch (IOException e) {
				
				e.printStackTrace();
			}
		}
		//output.txt�� ����� ���� �������� �޼ҵ�:��ü ��Ʈ��
		public static ArrayList<Shape>loadObjectFromFile(String fileName){
			ArrayList<Shape> result=null;
			ObjectInputStream in;
			try {
				in = new ObjectInputStream(new FileInputStream(fileName));
				result=(ArrayList<Shape>)in.readObject();
				in.close();
			} catch (FileNotFoundException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}		
			return result;//���� �迭 ����
		}
	}	
}