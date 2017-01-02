package com.niit.goonline.dao;

import java.util.List;

import com.niit.goonline.Products;

public interface ProductsDAO {
	public List<Products> list();
	
	public Products get(String ProductId);
	
	public boolean save(Products pro);
	
	public boolean update(Products pro);
	

}
