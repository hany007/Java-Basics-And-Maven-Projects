package com.niit;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController {
	@RequestMapping("/")
	public String getindex()
	{
		System.out.println("Home Page");
		return "index";
	}
@RequestMapping("/login")
public String getlogin()
{
	System.out.println("Login Page");
	return "login";
}
@RequestMapping("/register")
public String getregister()
{
	System.out.println("Register Page");
	return "register";
}
@RequestMapping("/shop")
public String getshop()
{
	System.out.println("Products Page");
	return "shop";
}
@RequestMapping("/checkout")
public String getcheckout()
{
	System.out.println("Chechout Page");
	return "checkout";
}
@RequestMapping("/single")
public String getsingle()
{
	System.out.println("Single Page");
	return "single";
}
@RequestMapping("/index")
public String getindex1()
{
	System.out.println("Home Page");
	return "index";
}
}













