package com.Thread;

public class Test
{
	public static void main(String agrs[])
	{
		System.out.println("starting of the main");
		
		Account a = new Account(10001,10000);
		
		DepositeThread d;
		WithdrawThread w;
		
		d=new DepositeThread(a, 1000);
		d=new DepositeThread(a, 2000);
		
		w=new WithdrawThread(a,3000);
		w=new WithdrawThread(a,4000);
		
		d.start();
		w.start();
	}

}
