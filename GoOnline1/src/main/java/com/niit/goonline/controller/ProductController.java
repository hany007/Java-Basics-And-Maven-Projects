package com.niit.goonline.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.niit.goonline.DAO.CategoryDAO;
import com.niit.goonline.DAO.ProductDAO;
import com.niit.goonline.DAO.SupplierDAO;
import com.niit.goonline.model.Category;
import com.niit.goonline.model.Product;
import com.niit.goonline.model.Supplier;
import com.niit.goonline.util.Util;

@Controller
public class ProductController {

	@Autowired(required = true)
	private ProductDAO productDAO;

	@Autowired(required = true)
	private CategoryDAO categoryDAO;

	@Autowired(required = true)
	private SupplierDAO supplierDAO;

	private Path path;

	@RequestMapping(value = "/products", method = RequestMethod.GET)
	public String listProducts(Model model) {
		System.out.println("inside /products list");
		model.addAttribute("isAdminClickedProducts", "true");
		model.addAttribute("product", new Product());
		model.addAttribute("productList", this.productDAO.list());

		model.addAttribute("Category", new Category());
		model.addAttribute("Supplier", new Supplier());

		model.addAttribute("supplierList", this.supplierDAO.list());
		model.addAttribute("categoryList", this.categoryDAO.list());

		return "products";
	}

	// For add and update product both
	@RequestMapping(value = "/product/add", method = RequestMethod.POST)
	public String addProduct(@ModelAttribute("product") Product product, Model model) {

		Category category = categoryDAO.getByName(product.getCategory().getName());
		System.out.println(category.getId() + ":" + category.getName() + ":" + category.getDescription());

		Supplier supplier = supplierDAO.getByName(product.getSupplier().getName());
		System.out.println(supplier.getId() + ":" + supplier.getName() + ":" + supplier.getAddress());

		model.addAttribute("Supplier", supplier);
		model.addAttribute("Category", category);
		model.addAttribute("supplierList", this.supplierDAO.list());
		model.addAttribute("categoryList", this.categoryDAO.list());

		String newID = Util.removeComma(product.getId());
		product.setId(newID);

		product.setCategory_id(category.getId());
		product.setSupplier_id(supplier.getId());

		product.setCategory(category);
		product.setSupplier(supplier);

		productDAO.saveOrUpdate(product);

		MultipartFile itemImage = product.getItemImage();
		path = Paths.get("E:\\maven1\\GoOnline1\\src\\main\\webapp\\img\\pro-img\\" + product.getId() + ".png");

		if (itemImage != null && !itemImage.isEmpty()) {
			try {
				System.out.println("inside try");
				itemImage.transferTo(new File(path.toString()));
			} catch (Exception e) {
				e.printStackTrace();
				throw new RuntimeException("product image saving failed.", e);
			}
		}

		return "redirect:/products";

	}

	@RequestMapping("/product/remove/{id}")
	public String removeProduct(@PathVariable("id") String id, ModelMap model) throws Exception {
		System.out.println("Inside /products remove");
		try {
			productDAO.delete(id);
			model.addAttribute("message", "Successfully deleted");
		} catch (Exception e) {
			model.addAttribute("message", e.getMessage());
			e.printStackTrace();
		}

		path = Paths.get("E:\\maven1\\GoOnline1\\src\\main\\webapp\\img\\pro-img\\" + id + ".png");

		if (Files.exists(path)) {
			try {
				Files.delete(path);
				System.out.println("Image successfully deleted");
			} catch (IOException e) {
				System.out.println("Error in Image deletion");
				e.printStackTrace();
			}
		}
		// redirectAttrs.addFlashAttribute(arg0, arg1)
		return "redirect:/products";
	}

	@RequestMapping("/product/edit/{id}")
	public String editProduct(@PathVariable("id") String id, Model model) {
		model.addAttribute("isAdminClickedEditProducts", "true");
		System.out.println("Inside /products edit");
		model.addAttribute("Category", new Category());
		model.addAttribute("Supplier", new Supplier());
		model.addAttribute("supplierList", this.supplierDAO.list());
		model.addAttribute("categoryList", this.categoryDAO.list());
		model.addAttribute("product", this.productDAO.get(id));
		model.addAttribute("productList", this.productDAO.list());
		return "products";
	}

	@RequestMapping("product/get/{id}")
	public String getSelectedProduct(@PathVariable("id") String id, Model model,
			RedirectAttributes redirectAttributes) {
		System.out.println("getSelectedProduct");

		model.addAttribute("productList", this.productDAO.list());

		redirectAttributes.addFlashAttribute("selectedProduct", this.productDAO.get(id));
		model.addAttribute("selectedProduct", this.productDAO.get(id));
		model.addAttribute("categoryList", this.categoryDAO.list());
		return "product-detail";
	}

}
