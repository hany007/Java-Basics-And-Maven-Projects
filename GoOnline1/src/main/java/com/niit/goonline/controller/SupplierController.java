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

import com.niit.goonline.DAO.SupplierDAO;
import com.niit.goonline.model.Supplier;
import com.niit.goonline.util.Util;

@Controller
public class SupplierController {

	@Autowired(required = true)
	private SupplierDAO supplierDAO;

	
	  @Autowired(required = true)
	  
	  @Qualifier(value = "supplierDAO") public void setSupplierDAO(SupplierDAO
	  ps) { this.supplierDAO = ps; }
	 
	@RequestMapping(value = "/supplier", method = RequestMethod.GET)
	public String listSuppliers(Model model) {
		System.out.println("Hello.. I'm inside /supplier list");
		// model.addAttribute("isAdminClickedSuppliers", "true");
		model.addAttribute("supplier", new Supplier());
		model.addAttribute("supplierList", this.supplierDAO.list());
		return "supplier";
	}

	// For add and update supplier both
	@RequestMapping(value = "/supplier/add", method = RequestMethod.POST)
	public String addSupplier(@ModelAttribute("supplier") Supplier supplier) {
		System.out.println("inside /supplier add");
		String newID = Util.removeComma(supplier.getId());
		supplier.setId(newID);
		supplierDAO.saveOrUpdate(supplier);

		return "redirect:/supplier";

	}

	@RequestMapping("/supplier/remove/{id}")
	public String removeSupplier(@PathVariable("id") String id, ModelMap model) throws Exception {
		System.out.println("inside /supplier remove");
		try {
			supplierDAO.delete(id);
			model.addAttribute("message", "Successfully Added");
		} catch (Exception e) {
			model.addAttribute("message", e.getMessage());
			e.printStackTrace();
		}
		return "redirect:/supplier";
	}

	@RequestMapping("/supplier/edit/{id}")
	public String editSupplier(@PathVariable("id") String id, Model model) {
		System.out.println("editSupplier");
		// model.addAttribute("isAdminClickedEditSuppliers", "true");
		model.addAttribute("supplier", this.supplierDAO.get(id));
		return "supplier";
	}

}
