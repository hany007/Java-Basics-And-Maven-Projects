package com.Throws;

public class Demo 
{
	static void ThrowMethod() throws NullPointerException
	{
		System.out.println("Inside throwMethod");
		throw new NullPointerException("Demo");
	}
	public static void main(String agrs[])
	{
		try
		{
			throwMethod();
		}
		catch(NullPointerException exp)
		{
			System.out.println("The Exception got caught" +exp);
		}
	}

}
