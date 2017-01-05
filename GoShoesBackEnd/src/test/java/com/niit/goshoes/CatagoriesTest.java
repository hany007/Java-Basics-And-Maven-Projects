package com.niit.goshoes;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.goshoes.dao.CatagoriesDAO;

public class CatagoriesTest {
	public static void main(String[] args) {

		AnnotationConfigApplicationContext ctx = new AnnotationConfigApplicationContext();
		ctx.scan("com.niit.*");
		ctx.refresh();
		Catagories categories = (Catagories) ctx.getBean("catagories");
		CatagoriesDAO categoriesdao = (CatagoriesDAO) ctx.getBean("catagoriesdao");

		categories.setCatagoryId("c1");
		categories.setCatagoryName("abc");

		categoriesdao.save(categories);
		// categoriesdao.get("c1");
		// categoriesdao.update(categories);
		// categoriesdao.delete("c1");
		// categoriesdao.list();

	}

}
