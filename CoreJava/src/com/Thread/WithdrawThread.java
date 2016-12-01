package com.Thread;

public class WithdrawThread extends Thread
{
	Account account;
	int amount;
	
	public WithdrawThread(Account account, int amount)
	{
		this.account=account;
		this.amount=amount;
	} 
	
	public void run()
	{
		account.withdraw(amount);
	}
}



