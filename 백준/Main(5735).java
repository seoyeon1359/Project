package test;
import java.util.Scanner;
//5735��: Emoticons
public class Main {
	public static void main(String []args) {
		Scanner scan=new Scanner(System.in);
		while(true) {
			int emoteCount=0;
			int N=scan.nextInt();
			int M=scan.nextInt();
			if(N==0||M==0)
				return;
			String []emote=new String[N];
			String []text=new String[M];
			for(int i=0;i<N;i++) {
				emote[i]=scan.next();
			}
			scan.nextLine();//�����ִ� ���鹮�� ���ۿ��� ����(\n)
			for(int i=0;i<M;i++) {
				text[i]=scan.nextLine();
			}
			
			for(int i=0;i<M;i++) {
				int indexN=0; //�����ٷ� ���� �ٽ� �պ���
				int findCount=0; //��˻翡 ���� ����
				
				while(true) { //�� �ٿ� ���� �̸�Ƽ���� ã�� �ݺ���
					int j=0;
					for(;j<N;j++) {
						int tmpIndex=999;
						if(text[i].indexOf(emote[0],indexN)!=-1) {
							tmpIndex=text[i].indexOf(emote[0],indexN);
						}
						for(int k=1;k<N;k++) { //�ּ� index ã��
							if((text[i].indexOf(emote[k],indexN)!=-1)&&(tmpIndex>text[i].indexOf(emote[k],indexN)))
								tmpIndex=text[i].indexOf(emote[k],indexN);
						}
						if(tmpIndex!=999) {
							emoteCount++;
							indexN=tmpIndex+emote[j].length(); //�̸�Ƽ�� ���̸�ŭ �ڷ�
							findCount=0;
							break;
						}
					}
					if(indexN!=999&&findCount==0) { //��˻�
						findCount++;
						continue;
					}else if(findCount==1){ //��˻��ߴµ� �̸�Ƽ���� ��ã��-�����ٷ�
						break;
					}else//�ش� �ٿ� �̸�Ƽ���� ����-�����ٷ�
						break;		
				}
			}
			System.out.println("");
			System.out.print(emoteCount);
		}
	}
}