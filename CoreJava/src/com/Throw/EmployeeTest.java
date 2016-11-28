package com.Throw;

public class EmployeeTest 
{
	static void employeeAge(int age) throws ThrowDemo
	{
		if(age < 0)
			throw new ThrowDemo("Age can't be less than zero)");
		else
			System.out.println("input is valid");
	}
	public static void main(String agrs[])
	{
		try
		{
			employeeAge(-2);
		}
		catch(ThrowDemo e)
		{
			e.printStackTrace();
		}
	}

	
	
	
	
	
}
