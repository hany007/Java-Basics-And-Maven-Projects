package com.LinkedHashSet;

import java.util.Iterator;
import java.util.LinkedHashSet;

public class LhashSet 
{
	public static void main(String agrs[])
	{
		LinkedHashSet<String>al=new LinkedHashSet<String>();
		al.add("Ravi");
		al.add("Vijay");
		al.add("ram");
		al.add("shiv");
		
		Iterator<String>itr=al.iterator();
		while(itr.hasNext());
		{
			System.out.println(itr.next());
		}

	}

}
