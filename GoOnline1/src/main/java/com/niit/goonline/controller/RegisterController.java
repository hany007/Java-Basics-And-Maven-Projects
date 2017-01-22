package com.niit.goonline.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.goonline.DAO.UserDetailsDAO;
import com.niit.goonline.model.UserDetails;
@Controller
public class RegisterController {
	@Autowired
	private UserDetailsDAO userDetailsDAO;

	

	
	@RequestMapping("/account")
	public String viewRegistration(Model model) {

		UserDetails userDetails = new UserDetails();
		model.addAttribute("userDetails", userDetails);
		return "account";
	}
	
	
	@RequestMapping(value = "/account", method = RequestMethod.POST)
	public ModelAndView processRegistration(@Valid @ModelAttribute("userDetails") UserDetails UserDetails,
			BindingResult result) {
		System.out.println(UserDetails.getFirstName());
		if (result.hasErrors()) {					
			ModelAndView model=new ModelAndView("account");
			model.addObject("message", "You have entered invalid details");
			
			System.out.println("Page has errors");
			return model;
		}
		
		List<UserDetails> userDetailsList = userDetailsDAO.getAllUsers();

        for (int i=0; i< userDetailsList.size(); i++) {
        	ModelAndView model=new ModelAndView("account");
        	if(UserDetails.getUserEmail().equals(userDetailsList.get(i).getUserEmail())) {
                model.addObject("emailError", "Email already exists");

                return model;
            }

            if(UserDetails.getUsername().equals(userDetailsList.get(i).getUsername())) {
                model.addObject("usernameError", "Username already exists");
                return model;
            }
            if(UserDetails.getUserPhone().equals(userDetailsList.get(i).getUserPhone())) {
                model.addObject("userPhoneError", "User phone already exists");
                return model;
            }
        }
	
        UserDetails.setEnabled(true);	
		userDetailsDAO.addUser(UserDetails);
		ModelAndView model=new ModelAndView("account");
		return model;
	}

}
