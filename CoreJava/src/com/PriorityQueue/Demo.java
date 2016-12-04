package com.PriorityQueue;

import java.util.Iterator;
import java.util.PriorityQueue;

public class Demo
{
	public static void main(String agrs[])
	{
		PriorityQueue<String> queue=new PriorityQueue<>();
		
		queue.add("Aman");
		queue.add("Ramesh");
		queue.add("vishal");
		queue.add("kushal");
		queue.add("Suresh");
		
		System.out.println("head:"+queue.element());
		System.out.println("head:"+queue.peek());
		
		
		System.out.println("iterating the Queue elements:");
		Iterator itr=queue.iterator();
		while(itr.hasNext())
		{
			System.out.println(itr.next());
		}
		
		queue.remove();
		queue.poll();
		
		System.out.println("after removing two elements:");
		Iterator<String>itr2=queue.iterator();
		while(itr2.hasNext())
		{
			System.out.println(itr2.next());
		}
			
	}

}
