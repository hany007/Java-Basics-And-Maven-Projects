package com.Thread;

public class Account 
{
	private int accountNumber;
	private double balance;
	
	public Account(int accountNumber,double balance)
	{
		this.accountNumber=accountNumber;
		this.balance=balance;
	}
	public synchronized void deposit(int amount)
	{
		balance = balance + amount;
		System.out.println("Balance after deposit amount:" +amount+"is:" +balance);
	}
	public synchronized void withdraw(int amount)
	{
		balance = balance-amount;
		System.out.println("Balance after withdraw : "+amount+"is:"+balance);
	}

}
