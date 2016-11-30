package com.Throws;

public class Demo 
{
	void ThrowMethod() throws NullPointerException
	{
		System.out.println("Inside throwMethod");
		throw new NullPointerException("Demo");
	}
	public static void main(String agrs[])
	{
		try
		{
			Demo d=new Demo();
			d.ThrowMethod();
		}
		catch(NullPointerException exp)
		{
			System.out.println("The Exception got caught" +exp);
		}
	}

}
