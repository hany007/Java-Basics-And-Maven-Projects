package com.ConstructorChaining;

class Demo 
{
	public static void main(String agrs[])
	{
		Const ob1 = new Const(1,"abc");
		Const ob2 = new Const(2,"xyz");
		
		ob1.disp();
		ob2.disp();
	}
}
