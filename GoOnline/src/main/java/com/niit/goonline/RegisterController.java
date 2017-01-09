package com.niit.goonline;

import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.goonline.DAO.UserDetailDAO;
import com.niit.goonline.model.UserDetail;

@Controller
@RequestMapping(value = "/account")
public class RegisterController {
	@Autowired
	private UserDetailDAO userDetailDAO;

	@RequestMapping(method = RequestMethod.GET)
	public String viewRegistration(Model model) {
		UserDetail UserDetail = new UserDetail();
		model.addAttribute("UserDetail", UserDetail);
		return "account";
	}

	@RequestMapping(value = "/account", method = RequestMethod.POST)
	public ModelAndView processRegistration(@Valid @ModelAttribute("UserDetail") UserDetail userDetail,
			BindingResult result) {
		if (result.hasErrors()) {
			ModelAndView model = new ModelAndView("account");
			model.addObject("message", "You have entered invalid details");
			System.out.println("Page have errors");
			return model;
		}
		List<UserDetail> userDetailList = userDetailDAO.list();
		for (int i = 0; i < userDetailList.size(); i++) {
			ModelAndView model = new ModelAndView("account");
			if (userDetail.getEmail().equals(userDetailList.get(i).getEmail())) {
				model.addObject("emailError", "Email already exists");
				return model;
			}
			if (userDetail.getUserName().equals(userDetailList.get(i).getUserName())) {
				model.addObject("userNameError", "Username already exists");
				return model;
			}
			if (userDetail.getPhone().equals(userDetailList.get(i).getPhone())) {
				model.addObject("userPhoneError", "User Phone already exists");
				return model;
			}
		}
		userDetail.setEnable(true);
		userDetailDAO.addUser(userDetail);
		ModelAndView model = new ModelAndView("index");
		return model;
	}

}
