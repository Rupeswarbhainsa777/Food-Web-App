package project1;
import java.util.*;

public class ServisesQuestion
{
	Question [] que = new Question[5];
	String []Selection = new String[5];
	public  ServisesQuestion()
	{
		que [0]= new Question(1,"Size of int","2","4","8","16","4");
		que [1]= new Question(1,"Size of boolean","2","4","8","16","1");
		que [2]= new Question(1,"Size of double","2","4","8","16","8");
		que [3]= new Question(1,"Size of char","2","4","8","16","2");
		que [4]= new Question(1,"Size of float","2","4","8","16","4");


		
	}
	public void printQuestin()
	{
		int i=0;
		for(Question q: que)
		{
			System.out.println(q.getQuestion());
			
			System.out.println(q.getOptin1());
			System.out.println(q.getOptin2());
			System.out.println(q.getOptin3());
			System.out.println(q.getOptin4());
			Scanner sc= new Scanner(System.in);
			Selection[i]=sc.nextLine();
			i++;
			
		}
		for(String s: Selection)
		{
			System.out.println(s);
		}
	}

}
