package com.ConstructorChaining;

class Const 
{
	int id;
	String name;
	
	Const(int id,String name)
	{
		this.id = id;
		this.name = name;
	}
	void disp()
	{
		System.out.println(id+ " "+name);
	}
}
