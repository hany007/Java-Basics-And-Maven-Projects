package com.niit.goonline;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.goonline.dao.UserDAO;

public class UserTest {
	
	@Autowired
	UserDAO userDAO;
	
	@Autowired
	User user;
	
	@Autowired
	AnnotationConfigApplicationContext ctx;
	
	public UserTest()
	{
		ctx= new AnnotationConfigApplicationContext();
		ctx.scan("com.niit.*");
		ctx.refresh();
		
		userDAO = (UserDAO)ctx.getBean("userDAO");
		user = (User)ctx.getBean("user");
	}
}
