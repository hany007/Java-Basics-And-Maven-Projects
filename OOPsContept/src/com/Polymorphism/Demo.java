package com.Polymorphism;

public class Demo extends Poly 
{
	public void run()
	{
		System.out.println("This program is running successfully..");
	}
	public static void main(String agrs[])
	{
		Poly obj=new Demo(); //upcasting
		obj.run();
	}
}
