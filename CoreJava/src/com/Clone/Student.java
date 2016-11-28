package com.Clone;

 class Student implements Cloneable
{
	 int rollno;
	 String name;
	 
	 Student(int rollno,String name)
	 {
		 this.rollno=rollno;
		 this.name=name;
	 }
	 
	 public Object clone()throws CloneNotSupportedException
	 {
		 return super.clone();
	 }
	 
	 

}
