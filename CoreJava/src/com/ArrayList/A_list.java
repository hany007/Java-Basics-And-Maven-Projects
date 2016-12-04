package com.ArrayList;

import java.util.ArrayList;
import java.util.Iterator;

public class A_list {

	public static void main(String[] args) 
	{
		Student s1=new Student(10,"ajay",19);
		Student s2=new Student(11,"vijay",19);
		Student s3=new Student(12,"kumar",20);
		
		ArrayList <Student>al=new ArrayList<Student>();
		al.add(s1);
		al.add(s2);
		al.add(s3);
		Iterator itr=al.iterator();
		
		while(itr.hasNext())
		{
			Student st=(Student)itr.next();
			System.out.println(st.rollno+" "+st.name+" "+st.age);
		}
	}
}
