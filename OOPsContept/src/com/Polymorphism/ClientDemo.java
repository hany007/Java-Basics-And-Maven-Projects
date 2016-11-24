package com.Polymorphism;

public class ClientDemo 
{
	public static void main(String agrs[])
	{
		Bank ob1=new SBI();
		
		Bank ob2=new ICIC();
		
		Bank ob3=new AXIS();
		
		System.out.println("SBI Rate of Interest:"+ob1.getRateOfInterest());
		
		System.out.println("ICIC Rate of Interest:"+ob2.getRateOfInterest());
		
		System.out.println("AXIS Rate of Interest:"+ob3.getRateOfInterest());
	}

}
