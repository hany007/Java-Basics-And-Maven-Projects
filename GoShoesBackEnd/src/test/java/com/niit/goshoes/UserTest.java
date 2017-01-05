package com.niit.goshoes;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.goshoes.dao.UserDAO;



public class UserTest {
	@Autowired
	UserDAO userDAO;

	@Autowired
	User user;

	@Autowired
	AnnotationConfigApplicationContext ctx;

	public UserTest() {
		ctx = new AnnotationConfigApplicationContext();
		ctx.scan("com.niit.*");
		ctx.refresh();

		 userDAO = (UserDAO) ctx.getBean("userDAO");
		User user = (User) ctx.getBean("user");

		user.setUserId("2");
		user.setUserName("abc");
		user.setPassword("123");
		user.setUserAddress("address");

		userDAO.save(user);
		userDAO.update(user);
		userDAO.get("2");
		userDAO.list();
	}

	public boolean validate(String UserId, String Password) {
		if (userDAO.validate(UserId, Password) == null) {
			System.out.println("user does not exist");
			return false;
		} else {
			System.out.println("user exist");
			return true;
		}
	}

	public static void main(String[] args) {
		UserTest t = new UserTest();
		t.validate("2", "123");

	}

}
