package com.niit.goonline;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController {

	@RequestMapping("/")
	public String getindex() {
		System.out.println("Home Page");
		return "index";
	}

	@RequestMapping("/index")
	public String gethome() {
		System.out.println("Home Page");
		return "index";
	}

	@RequestMapping("/404")
	public String get404() {
		System.out.println("404 Page");
		return "404";
	}

	@RequestMapping("/blog-archive")
	public String getblogA() {
		System.out.println("Blog Page1");
		return "blog-archive";
	}

	@RequestMapping("/blog-archive-2")
	public String getblogA2() {
		System.out.println("Blog Page2");
		return "blog-archive-2";
	}

	@RequestMapping("/blog-single")
	public String getblogS() {
		System.out.println("Blog Page3");
		return "blog-single";
	}

	@RequestMapping("/cart")
	public String getcart() {
		System.out.println("My Cart");
		return "cart";
	}

	@RequestMapping("/checkout")
	public String getcheckout() {
		System.out.println("Checkout Page");
		return "checkout";
	}

	@RequestMapping("/contact")
	public String getcontact() {
		System.out.println("Contact Page");
		return "contact";
	}

	@RequestMapping("/product")
	public String getproduct() {
		System.out.println("Products Page");
		return "product";
	}

	@RequestMapping("/product-detail")
	public String getdetail() {
		System.out.println("Products Detail Page");
		return "product-detail";
	}

	@RequestMapping("/wishlist")
	public String getwishlist() {
		System.out.println("Wishlist Page");
		return "wishlist";
	}

}
