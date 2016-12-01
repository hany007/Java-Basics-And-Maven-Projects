package com.Thread;

public class DepositeThread extends Thread
{
	Account account;
	int amount;
	
	public DepositeThread(Account account, int amount)
	{
		this.account=account;
		this.amount=amount;
	} 
	
	public void run()
	{
		account.deposit(amount);
	}
}
