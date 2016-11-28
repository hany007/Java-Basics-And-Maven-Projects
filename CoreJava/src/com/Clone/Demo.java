package com.Clone;

public class Demo extends Student
{
	public static void main(String agrs[])
	{
		try
		{
			Student s1=new Student(10,"abc");
			Student s2=(Student).s1clone();
			
			System.out.println(s1.rollno+" "+s1.name);
			System.out.println(s2.rollno+" "+s2.name);
		}
		catch(CloneNotSupportedException e)
		{
		}
	}

}
