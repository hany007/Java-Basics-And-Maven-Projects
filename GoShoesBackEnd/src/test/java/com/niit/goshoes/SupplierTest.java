package com.niit.goshoes;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.goshoes.dao.SupplierDAO;

public class SupplierTest {
	public static void main(String[] args) {
		
		AnnotationConfigApplicationContext ctx = new AnnotationConfigApplicationContext();
		ctx.scan("com.niit.*");
		ctx.refresh();
		
		Supplier supplier = (Supplier)ctx.getBean("supplier");
		SupplierDAO supplierDAO = (SupplierDAO)ctx.getBean("supplier");
		
		supplier.setSupplierId("S1");
		supplier.setSupplierName("Abc");
		supplier.setSupplierAddress("supplierAddress");
		
		supplierDAO.save(supplier);
	}

}
