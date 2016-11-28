package com.Finally;

public class Fnly 
{
	public static void main(String agrs[])
	{
		try
		{
		System.out.println("First statement of try block");
		int num=45/3;
		System.out.println(num);
	}
	catch(ArrayIndexOutOfBoundsException e)
	{
		System.out.println("ArrayIndexOutOfBoundsException");
	}
	finally
	{
		System.out.println("fanally block");
	}
	System.out.println("Out of try-catch-finally block");
	}

}
