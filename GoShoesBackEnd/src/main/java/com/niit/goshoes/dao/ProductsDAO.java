package com.niit.goshoes.dao;

import java.util.List;

import com.niit.goshoes.Products;

public interface ProductsDAO {
	public List<Products> list();
	
	public Products get(String ProductId);
	
	public boolean save(Products pro);
	
	public boolean update(Products pro);
	

}
