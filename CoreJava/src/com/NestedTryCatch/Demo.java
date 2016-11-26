package com.NestedTryCatch;

public class Demo extends Nest
{
	public static void main(String agrs[])
	{
	// Parent try block
	try
	{
		// child block1
		try
		{
			System.out.println("Inside block1");
			int b =45/0;
			System.out.println(b);
		}
		catch(ArithmeticException e1)
		{
			System.out.println("Exception: e1");
		}
		// child try block2
		try
		{
			System.out.println("Inside block2");
			int b =45/0;
			System.out.println(b);
		}
		catch(ArithmeticException e2)
		{
			System.out.println("Exception e2");
		}
		System.out.println("..");
	}
	catch(ArithmeticException e3)
	{
		System.out.println("Arithmetic Exception");
		System.out.println("Inside parent try catch block");
	}
	catch(Exception e4)
	{
		System.out.println("Exception");
		System.out.println("Inside parent try catch block");
	}
	
}
}

