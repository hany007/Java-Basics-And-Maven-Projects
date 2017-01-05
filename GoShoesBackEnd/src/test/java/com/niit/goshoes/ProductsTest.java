package com.niit.goshoes;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.goshoes.dao.ProductsDAO;

public class ProductsTest {
	public static void main(String[] args) {
		AnnotationConfigApplicationContext ctx = new AnnotationConfigApplicationContext();
		ctx.scan("com.niit.*");
		ctx.refresh();
		Products products = (Products)ctx.getBean("products");
		ProductsDAO productsDAO = (ProductsDAO) ctx.getBean("productsDAO");
		
		products.setProductId("p1");
		products.setProductName("iPhone");
		products.setProductPrice(50000);
		
		//productsDAO.list();
		//productsDAO.save(products);
		//productsDAO.get("p1");
		//productsDAO.update(products);
		
		
		
	}

}
