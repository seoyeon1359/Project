package finaltest;
//���̺귯�� ȣ��
import java.awt.*;
import java.awt.event.*;
import java.util.ArrayList;
import javax.swing.JPanel;

/*PanelA�� ���� �׸��� �׷����� ĵ���� ������ �ϴ� Ŭ������ ���콺 �̺�Ʈ��� �׷��� �޼ҵ尡 ���ǵ� Ŭ�����Դϴ�.*/
class PanelA extends JPanel{
	/*��� ����*/
	ArrayList<Shape> shapes=new ArrayList<Shape>(); //�׸� ���� ��ü�� �����ϴ� ��ü �迭
	Point start=null,end=null; //���۰� ���� ��ǥ�� ���� ��ü ����	
	ControlPoint cp; //��Ʈ�� ����Ʈ ��ü
	Shape select; //���õ� ���� ������ ��� Shape
	boolean isFocusS=false,isFocusCP=false;
	String selectBtn; //������ ��ư�� ���� ������ ����
	int btwX,btwY,selectIndex; //����, �����ε����� ���� ����
	int x,y,width,height,x2,y2; //���� ������ ���� ����
	/*������*/
	PanelA(){
		setBackground(Color.YELLOW);
		//���콺 �̺�Ʈ ������ ����
		MPListener mplistener=new MPListener();
		addMouseListener(mplistener);
		addMouseMotionListener(mplistener);
		cp=new ControlPoint(1,1,1,1);
	}
	//���� Ŭ���� �̺�Ʈ ������-���콺 �̺�Ʈ///
	private class MPListener extends MouseAdapter{
		public void mousePressed(MouseEvent e) { //���� ����&&����
			start=e.getPoint(); 
			end=e.getPoint();  
			System.out.printf("%d : %d\n",start.x,start.y);
			/* ����, ��Ʈ�� ����Ʈ ���� �� ����: ���콺 �̺�Ʈ */
			if(isShapeOrCpSelect(shapes,cp)) {
				repaint(); 
			}
			/* ���� �̵�: ���콺 �̺�Ʈ */
			switch(selectBtn) { //����-��ġ������ ���� ����ġ ��
				case "�簢":
				case "����":
				case "Ÿ��":
					if(isFocusS==true) { //�������̶� ���õ��� �������� �ٸ��ϱ�
						btwX=start.x-select.x; //����-�������� ���� ����
				        btwY=start.y-select.y;
					}
					break;
				}
		}
		/* ���� �̵�, ũ�� ����: ���콺 �̺�Ʈ */
		public void mouseDragged(MouseEvent e) { //�巡�� �� ��
			end=e.getPoint();
			repaint();
		}
		/* ���� ����, ���� ����: ���콺 �̺�Ʈ */
		public void mouseClicked(MouseEvent e) { //����� ����
			switch(selectBtn) {
				case "����": //c.copy�ؼ� Ŭ���� ��ȯ? return Shape
					ShapeCopy(select,selectIndex,shapes); //���� ����
					repaint();
					break;
				case "����":  //�ٸ� ȭ���� Ŭ���ص� ���� ���õȰ� ������
					shapes.remove(selectIndex);
					cp.setShow(false); //���� �� �Ŀ� cp ����
					select=null;
					repaint();
					break;
				}
		}
		/* ���� �̵�, ũ�� ����, ����: ���콺 �̺�Ʈ */
		public void mouseReleased(MouseEvent e) { //���콺�� �� ��>>�巡���ߴ� ������ ������
			end=e.getPoint();
			if(isFocusCP) { //cp�� ���É�����
				if(cp.isCp1()) {//���� ��� ��Ʈ�� ����Ʈ
					SizeChangeWCp1(select,selectIndex,shapes);
				}else{ // cp.isCp2()  ���� �ϴ� ��Ʈ�� ����Ʈ
					SizeChangeWCp2(select,selectIndex,shapes);
				}
				return;
			}else if(isFocusS==false) { //���� ����
				calculateMakeV(start,end);
		        switch(selectBtn) { //���õ� ��ư ���� �°� ��ü ���� �� ����
		        case "�簢":
		        	Shape rect=new Rectangle(x,y,width,height);
					shapes.add(rect); //shape��ü �迭�� ����>>�� ĳ����
		        	break;
		        case "����": //�ٸ� ������ �ٸ��� �ʺ���̰� �ƴ϶� ���۰� ����
		        	Shape line=new Line(start.x,start.y,end.x,end.y); //start.x,start.y,end.x,end.y
		        	shapes.add(line);//shape��ü �迭�� ����>>�� ĳ����
		        	break;
		        case "Ÿ��":
		        	Shape oval=new Oval(x,y,width,height);
		        	shapes.add(oval);//shape��ü �迭�� ����>>�� ĳ����
		        	break;
		        }
			}else {  //isFocusS==True ���� �̵�
				switch(selectBtn) { 
				case "": //���۽�
				case "�簢":
				case "����":
				case "Ÿ��":
					ShapeMove(select,selectIndex,end,btwX,btwY); //���� ��
					break;
				}
			}
			repaint();
		}
	}
	////* ���� �׸��� �޼ҵ� *////
	public void paintComponent(Graphics g) { //���� �׸���
      super.paintComponent(g); 
      
      for(int i=0;i<shapes.size();i++) { //�迭 ���� ����� ���� ��ü ���
      	Shape shape=shapes.get(i);
      	if(shape.equal(select)&&selectBtn!=""&&selectBtn!="����"&&selectBtn!="����") {
      		continue; //�̵�, ũ�������Ҷ� ���õ� ������ �׸����ʰ���
      	}
      	shape.draw(g);
      }
      cp.draw(g);
      
      if(start==null||end==null) //���α׷� ���۽� ����Ǵ� ���� ����
    	  return;
      
      if(isFocusCP) {  //���� ũ�� ����
    	 	switch(selectBtn) {
    	 		case "�簢":
    	 		case "����":
    	 		case "Ÿ��":
    	 			if(cp.isCp1()) {
    	 				SizeChangeDrawCp1(g);
        	          	break;
    	 			}else { //cp.isCp2()==True
    	 				SizeChangeDrawCp2(g);
        	          	break;
    	 			}
    	 	}
			return;
      }else if(isFocusS==false) { //�巡�׷� ��������   
    	  calculateMakeV(start,end);
          switch(selectBtn) {
          	case "�簢":
	        	g.drawRect(x, y, width, height);
	        	break;
	        case "����":
	        	g.drawLine(start.x,start.y,end.x,end.y);
	        	break;
	        case "Ÿ��":
	        	g.drawOval(x, y, width, height);
	        	break;
	        }
	      	return;
      }else {//���� �̵�
    	  switch(selectBtn) { //������ �̵��Ǵ� ���� �׸��� ��
	        case "�簢":
	        case "����":
	        case "Ÿ��":
	          	ShapeMoveDraw(g);
	          	break;
	          }
      }
  }
	////////////////////////�̺�Ʈ ���� �Լ� ����//////////////////////////////////////////
	public void calculateMakeV(Point start,Point end) {
		x=Math.min(start.x, end.x);
        y=Math.min(start.y, end.y);
        x2=Math.max(start.x, end.x);
        y2=Math.max(start.y, end.y);
        width=Math.abs(start.x-end.x);
        height=Math.abs(start.y-end.y);
	}
	public boolean isShapeOrCpSelect(ArrayList<Shape> shapes,ControlPoint cp) {
		for(int i=shapes.size()-1;i>=0;i--) { //����:�ڿ������� Ȯ���ؼ� ������ħ�̳� ���� ���
			Shape tmp=shapes.get(i);
			if(tmp.include(start)) {
				select=tmp;
				selectIndex=i;
				cp.cpChange(select);
				cp.setShow(true);
				if(cp.include(start)) {
					isFocusCP=true;
					 //Ŭ���Ǹ� ũ������ �̺�Ʈ��
					return true;
				}
				isFocusCP=false;
				isFocusS=true;
				return true; //�ߺ��� �� �����ϱ�
			}else {
				select=null;
				cp.setShow(false);
				isFocusS=false;
			}
		}
		return false;
	}
	public void ShapeCopy(Shape select,int selectIndex,ArrayList<Shape> shapes) {//���� ����
		Shape copy = null;
		if(select==null) { //���õ� ������ ���ٸ� �̺�Ʈ ���� ����
			return;
		}
		if(select instanceof Rectangle) { //shape�� �޴� ������??? selct�� �Ķ����
			Rectangle s=(Rectangle)select;
			copy=new Rectangle(s.x+10,s.y+10,s.getWidth(),s.getHeight());//s.x+10,s.y+10,s.width,s.height
		}
		if(select instanceof Line) {
			Line s=(Line)select;
			copy=new Line(s.x+10,s.y,s.getX2()+10,s.getY2());
		}
		if(select instanceof Oval) {
			Oval s=(Oval)select;	
			copy=new Oval(s.x+10,s.y+10,s.getWidth(),s.getHeight());//s.x+10,s.y+10,s.width,s.height
		}
		shapes.add(copy);
	}
	public void ShapeMove(Shape select,int selectIndex,Point end,int btwX,int btwY) {//���� �̵�
		int px=end.x-btwX;
		int py=end.y-btwY;
		if(select instanceof Rectangle) {
			Rectangle tmp=(Rectangle)select;
			Rectangle s=new Rectangle(px,py,tmp.getWidth(),tmp.getHeight());//(Rectangle)select;
			shapes.set(selectIndex, s);
		}else if(select instanceof Line) {
			Line tmp=(Line)select;//s.x+10,s.y+10,s.width,s.height
			int lenX=tmp.getX2()-tmp.x;
      		int lenY=tmp.getY2()-tmp.y;
			Line s=new Line(px,py,px+lenX,py+lenY);
			shapes.set(selectIndex, s);
		}else if(select instanceof Oval){
			Oval tmp=(Oval)select;
			Oval s=new Oval(px,py,tmp.getWidth(),tmp.getHeight());
			shapes.set(selectIndex, s);
		}
		return;
	}
	public void ShapeMoveDraw(Graphics g) {//���� �̵� �׸���
		int px=end.x-btwX;
      	int py=end.y-btwY;
      	if(select instanceof Rectangle) {
      		Rectangle s=(Rectangle)select;
      		g.drawRect(px,py, s.getWidth(),s.getHeight());//start.x-btwX, start.y-btwY
      		cp.cpChange(px,py,px+s.getWidth(),py+s.getHeight());
      		
      	}else if(select instanceof Line) {
      		Line s=(Line)select;
      		int lenX=s.getX2()-s.x;
      		int lenY=s.getY2()-s.y;
      		g.drawLine(px,py,px+lenX,py+lenY);
      		cp.cpChange(px,py,px+lenX,py+lenY);
      	}else{
      		Oval s=(Oval)select;
      		g.drawOval(px,py,s.getWidth(),s.getHeight());
      		cp.cpChange(px,py, px+s.getWidth(),py+s.getHeight());
      	}	
      	cp.draw(g);
	}
	public void SizeChangeWCp1(Shape select,int selectIndex,ArrayList<Shape> shapes) {//cp1 Ŭ���� ���� ũ������
		int width=start.x-end.x;
		int height=start.y-end.y;
		if(select instanceof Rectangle) {
			Rectangle tmp=(Rectangle)select;
			Shape s=new Rectangle(end.x,end.y,width+tmp.getWidth(),height+tmp.getHeight());
			shapes.set(selectIndex,s);
		}else if(select instanceof Line) {
			Line tmp=(Line)select;
			Shape s=new Line(end.x,end.y,tmp.getX2(),tmp.getY2());//s.x+10,s.y+10,s.width,s.height
			shapes.set(selectIndex,s);
		}else{
			Oval tmp=(Oval)select;
			Shape s=new Oval(end.x,end.y,width+tmp.getWidth(),height+tmp.getHeight());
			shapes.set(selectIndex,s);
		}
		cp.setCp1(false);
		isFocusCP=false;
	}
	public void SizeChangeWCp2(Shape select,int selectIndex,ArrayList<Shape> shapes) {//cp2 Ŭ���� ���� ũ������
		if(select instanceof Rectangle) {
			Shape s=new Rectangle(select.x,select.y,end.x-select.x,end.y-select.y);
			shapes.set(selectIndex,s);
		}else if(select instanceof Line) {
			Line s=new Line(select.x,select.y,end.x,end.y);
			shapes.set(selectIndex,s);
		}else{
			Oval s=new Oval(select.x,select.y,end.x-select.x,end.y-select.y);
			shapes.set(selectIndex,s);
		}
		cp.setCp2(false);
		isFocusCP=false;
	}
	public void SizeChangeDrawCp1(Graphics g) { //cp1 Ŭ���� ���� ũ������ �׸���
		int width=start.x-end.x;
		int height=start.y-end.y;
		int x2=start.x;
		int y2=start.y;
		if(select instanceof Rectangle) {
      		Rectangle s=(Rectangle)select;
      		g.drawRect(end.x,end.y,width+s.getWidth(),height+s.getHeight());//start.x-btwX, start.y-btwY
      		cp.cpChange(end.x,end.y,x2+s.getWidth(),y2+s.getHeight());//width+s.width,height+s.height
      	}else if(select instanceof Line) {
      		Line s=(Line)select;
      		g.drawLine(end.x,end.y,s.getX2(),s.getY2());
    	 	cp.cpChange(end.x,end.y,s.getX2(),s.getY2());
      	}else{
      		Oval s=(Oval)select;
      		g.drawOval(end.x,end.y,s.x-end.x+s.getWidth(),s.y-end.y+s.getHeight());
      		cp.cpChange(end.x,end.y,x2+s.getWidth(),y2+s.getHeight());
      	}	
		cp.draw(g);	
	}
	public void SizeChangeDrawCp2(Graphics g) { //cp2 Ŭ���� ���� ũ������ �׸���
		if(select instanceof Rectangle) {
      		Rectangle s=(Rectangle)select;
      		g.drawRect(s.x,s.y,end.x-s.x,end.y-s.y);
      		cp.cpChange(s.x,s.y,end.x,end.y);
      		
      	}else if(select instanceof Line) {
      		Line s=(Line)select;
      		g.drawLine(s.x,s.y,end.x,end.y);
    	 	cp.cpChange(s.x,s.y,end.x,end.y);
      	}else{
      		Oval s=(Oval)select;
      		g.drawOval(s.x,s.y,end.x-s.x,end.y-s.y);
      		cp.cpChange(s.x,s.y,end.x,end.y);
      	}
		cp.draw(g);
	}
}

