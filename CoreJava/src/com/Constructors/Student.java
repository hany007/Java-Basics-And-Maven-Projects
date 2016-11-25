package com.Constructors;

public class Student 
{
	int rollNo;
	String studentName;
	
	
	Student(int i,String n)
	{
		rollNo = i;
		studentName = n;
		
	}
	 
	void display()
	{
		System.out.println(rollNo+" "+studentName);
	}

}
