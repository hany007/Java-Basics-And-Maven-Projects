package com.hashCode;

public class IntDemo 
{
	public static void main(String agrs[])
	{
		Integer i = new Integer("20");
		
		int retval = i.hashCode();
		
		System.out.println("value ="+retval);
	}
}
