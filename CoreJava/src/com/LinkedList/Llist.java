package com.LinkedList;

import java.util.Iterator;
import java.util.LinkedList;

public class Llist {

	public static void main(String[] args) 
	{
		LinkedList<String>al=new LinkedList<String>();
		al.add("vijay");
		al.add("jack");
		al.add("ajay");
		al.add("kumar");
		
		Iterator itr=al.iterator();
		
		while(itr.hasNext());
		
		System.out.println(itr.next());
	}

}
