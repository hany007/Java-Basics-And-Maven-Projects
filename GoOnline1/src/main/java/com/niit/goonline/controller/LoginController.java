package com.niit.goonline.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {
	@RequestMapping("/loginpage")
	public String viewlogin(){
		return "login";
	}
	@RequestMapping("/login")
	public String processlogin(@RequestParam(value="error",required=false) String error,@RequestParam(value="logout",required=false)String logout,Model model){
		System.out.println("login mapping");
		System.out.println(logout+" "+error);
		if(error!=null){
			model.addAttribute("error","Invalid Username or password");
			return "login";
		}
		// After logout
		return "redirect:/";
	}
			

}
