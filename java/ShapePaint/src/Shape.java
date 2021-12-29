import java.awt.*;
import java.awt.event.*;
import java.io.Serializable;

import javax.swing.*;

/*�׸� ���� Ŭ������*/
class Shape implements Serializable{ //�������� ���� Ŭ����
	protected int x;
	protected int y;
	Shape(int x,int y){
		this.x=x;
		this.y=y;
	}
	public void draw(Graphics g) {} //�޼ҵ� �������̵��� ���� �޼ҵ� ������
	public boolean include(Point p) {
		return this.x<=p.x&&this.y<=p.y;
	}
	public boolean equal(Shape s) {
		return this.x==s.x&&this.y==s.y;
	}
	public int getY() {
		return y;
	}
	public void setY(int y) {
		this.y = y;
	}
}
class Rectangle extends Shape{
	private int width;
	private int height;
	Rectangle(int x,int y,int width,int height){
		super(x,y);
		this.width=width;
		this.height=height;
	}
	public void draw(Graphics g) {
		g.drawRect(super.x,super.y,width,height);
	}
	public boolean include(Point p) { //���� ���-����
		int x2=width+super.x;
		int y2=height+super.y;
		return super.include(p)&&x2>=p.x&&y2>=p.y;
	}
	public boolean equal(Shape s) { //��
		if(s instanceof Rectangle) {
			Rectangle r=(Rectangle)s;
			return super.equal(s)&&r.width==this.width&&r.height==this.height;
		}
		return false;
	}
	public int getWidth() {
		return width;
	}
	public int getHeight() {
		return height;
	}
}
class Line extends Shape{
	private int x2;
	private int y2;
	Line(int x,int y,int x2,int y2){
		super(x,y);
		this.x2=x2;
		this.y2=y2;
	}
	public void draw(Graphics g) {
		g.drawLine(super.x, super.y, x2, y2);
	}
	public boolean include(Point p) {
		//double ����=1;
		System.out.println("�� Ŭ����");
		int inclination1=(int)(((float)(y-y2)/(float)(x-x2))*10);
		int inclination2=(int)(((float)(y-p.y)/(float)(x-p.x))*10);
		System.out.print(inclination1);
		System.out.print(" : ");
		System.out.println(inclination2);
		return super.include(p)&&x2>=p.x&&y2>=p.y&&inclination1==inclination2;
	}
	public boolean equal(Shape s) {
		if(s instanceof Line) {
			Line l=(Line)s;
			return super.equal(s)&&l.x2==this.x2&&l.y2==this.y2;
		}
		return false;
	}
	public int getX2() {
		return x2;
	}
	public int getY2() {
		return y2;
	}
}
class Oval extends Shape{
	private int width;
	private int height;
	Oval(int x,int y,int width,int height){
		super(x,y);
		this.width=width;
		this.height=height;
	}
	public void draw(Graphics g) {
		g.drawOval(super.x, super.y, width, height);
	}
	public boolean include(Point p) {
		int x2=width+super.x;
		int y2=height+super.y;
		return super.include(p)&&x2>=p.x&&y2>=p.y;
	}
	public boolean equal(Shape s) {
		if(s instanceof Oval) {
			Oval o=(Oval)s;
			return super.equal(s)&&o.width==this.width&&o.height==this.height;
		}
		return false;
	}
	public int getWidth() {
		return width;
	}
	public int getHeight() {
		return height;
	}
}
class ControlPoint extends Shape{
	private int x2;
	private int y2;
	private boolean cp1;
	private boolean cp2;
	private boolean show; //������ �� �ֵ���? 
	ControlPoint(int x,int y,int x2,int y2){
		super(x,y);
		this.x2=x2;
		this.y2=y2;
		show=false;
	}
	public void draw(Graphics g) { //�׸���
		if(show) {
			g.drawRect(super.x,super.y,4,4);
			g.drawRect(x2,y2,4,4);
			//show=false; //�׸��� �� ������ false=������ �ƴѰ� Ŭ���ص� ��Ʈ�� ����Ʈ�� ��� ���ִ°� ����
        }
	}
	public boolean include(Point p) { //��Ʈ�� ����Ʈ�� Ŭ���ߴ°�
		if(super.include(p)&&p.x<=x+4&&p.y<=x+4) {
			cp1=true;
			return true;
		}else if(x2<=p.x&&y2<=p.x&&x2+4>=p.x&&y2+4>=p.y) {
			cp2=true;
			return true;
		}
		return false;
	}
	public void cpChange(Shape s) { //��Ʈ�� ����Ʈ ����->��ü ���
		super.x=s.x-2;
		super.y=s.y-2;
		if(s instanceof Rectangle) { //��ü Ÿ�� �˻�
			Rectangle tmp=(Rectangle)s;
			this.x2=tmp.getWidth()+tmp.x;
			this.y2=tmp.getHeight()+tmp.y;
		}else if(s instanceof Line) {
			Line tmp=(Line)s;
			this.x2=tmp.getX2();
			this.y2=tmp.getY2();
		}else if(s instanceof Oval) {
			Oval tmp=(Oval)s;
			this.x2=tmp.getWidth()+tmp.x;
			this.y2=tmp.getHeight()+tmp.y;
		}
		this.x2-=2;
		this.y2-=2;
	}
	public void cpChange(int x1,int y1,int x2,int y2) { //��Ʈ�� ����Ʈ ����->���� ���
		this.x=x1-2;
		this.y=y1-2;
		this.x2=x2-2;
		this.y2=y2-2;
	}
	public int getX2() {
		return x2;
	}
	public int getY2() {
		return y2;
	}
	public boolean isCp1() {
		return cp1;
	}
	public boolean isCp2() {
		return cp2;
	}
	public boolean isShow() {
		return show;
	}
	public void setCp1(boolean cp1) {
		this.cp1 = cp1;
	}
	public void setCp2(boolean cp2) {
		this.cp2 = cp2;
	}
	public void setShow(boolean show) {
		this.show = show;
	}

}