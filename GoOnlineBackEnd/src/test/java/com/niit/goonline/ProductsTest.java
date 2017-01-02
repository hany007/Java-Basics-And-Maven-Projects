package com.niit.goonline;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.goonline.dao.ProductsDAO;

public class ProductsTest {

	public static void main(String[] args) {
		AnnotationConfigApplicationContext ctx = new AnnotationConfigApplicationContext();
		ctx.scan("com.niit.*");
		ctx.refresh();
		Products products = (Products)ctx.getBean("products");
		ProductsDAO productsDAO = (ProductsDAO)ctx.getBean("products");
		
		products.setProductId("p1");
		products.setProductName("abd");
		products.setProductPrice(2500);
		
		productsDAO.save(products);

	}

}
