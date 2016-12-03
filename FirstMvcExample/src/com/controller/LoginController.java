package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Model.User;


public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public LoginController() {
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username=request.getParameter("name");
		
		String password=request.getParameter("password");
		
		User object =new User();
		
		object.setName(username);
		
		object.setPassword(password);
		
		request.setAttribute("key", object);
		
		boolean b=object.validatelogin();
		
		
		if(b==true)
		{
			RequestDispatcher rd=request.getRequestDispatcher("success.jsp");
			rd.forward(request, response);
		}
		else
		{
			RequestDispatcher rd=request.getRequestDispatcher("error.jsp");
			rd.forward(request, response);
		}
		
		
		
		
		
		
		
		
		
		
	}

}
