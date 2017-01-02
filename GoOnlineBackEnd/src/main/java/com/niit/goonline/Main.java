package com.niit.goonline;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class Main 
{
    public static void main( String[] args )
    {
    	 AnnotationConfigApplicationContext ctx = new AnnotationConfigApplicationContext();
         ctx.scan("com.niit.goonline");//This will load the configured components.
         ctx.refresh();
         
         System.out.println(ctx);
    }
}
