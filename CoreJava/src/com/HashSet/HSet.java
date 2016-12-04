package com.HashSet;

import java.util.HashSet;
import java.util.Iterator;

public class HSet {

	public static void main(String[] args)
	{
		HashSet<String>al=new HashSet<String>();
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
