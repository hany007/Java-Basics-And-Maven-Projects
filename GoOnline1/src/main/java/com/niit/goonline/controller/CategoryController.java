package com.niit.goonline.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.goonline.DAO.CategoryDAO;
import com.niit.goonline.model.Category;
import com.niit.goonline.util.Util;

@Controller
public class CategoryController {

	@Autowired
	private CategoryDAO categoryDAO;
	

	@Autowired(required = true)
	@Qualifier(value = "categoryDAO")
	public void setCategoryDAO(CategoryDAO categoryDAO) {
		this.categoryDAO = categoryDAO;
	}
	
	
	@RequestMapping(value = "/category", method = RequestMethod.GET)
	public String listCategories(Model model) {
		System.out.println(" inside /categories list");
		//TO CARRY THE DATA TO NEXT PAGE
		model.addAttribute("category", new Category());
		//model.addAttribute("isAdminClickedCategories", "true");
		model.addAttribute("categoryList",categoryDAO.list());
		return "category";
	}

	// For add and update category both
	@RequestMapping(value = "/category/add", method = RequestMethod.POST)
	public String addCategory(@ModelAttribute("category") Category category) {

		System.out.println("inside /categories add");
		
		String newID=Util.removeComma(category.getId());
		category.setId(newID);
		categoryDAO.saveOrUpdate(category);
		return "redirect:/category";
	}

	@RequestMapping("/category/remove/{id}")
	public String removeCategory(@PathVariable("id") String id, ModelMap model) throws Exception {

		System.out.println("inside /categories remove");
		
		try {
			categoryDAO.delete(id);
			model.addAttribute("message", "Successfully Added");
		} catch (Exception e) {
			model.addAttribute("message", e.getMessage());
			e.printStackTrace();
		}
		// redirectAttrs.addFlashAttribute(arg0, arg1)
		return "redirect:/category";
	}

	@RequestMapping("/category/edit/{id}")
	public String editCategory(@PathVariable("id") String id, Model model) {
		System.out.println("inside /categories edit");
		model.addAttribute("category", this.categoryDAO.get(id));
		//model.addAttribute("isAdminClickedEditCategories", "true");
		model.addAttribute("listCategories", this.categoryDAO.list());
		return "category";
	}
}
