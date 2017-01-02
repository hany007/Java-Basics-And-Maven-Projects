package com.niit.goonline;




import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.goonline.dao.CatagoriesDAO;

public class CatagoriesTest {
	public static void main(String[] args) {
		
		AnnotationConfigApplicationContext ctx = new AnnotationConfigApplicationContext();
		ctx.scan("com.niit.*");
		ctx.refresh();
		Catagories categories=(Catagories)ctx.getBean("categories");
		CatagoriesDAO categoriesdao=(CatagoriesDAO)ctx.getBean("CategoriesDAO");
	
	    categories.setCatagoryId("c1");
	    categories.setCatagoryName("abc");
		
		categoriesdao.save(categories);	
		
		
	}

}
