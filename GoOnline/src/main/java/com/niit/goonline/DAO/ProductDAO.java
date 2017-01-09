package com.niit.goonline.DAO;

import java.util.List;

import com.niit.goonline.model.Products;

public interface ProductDAO {
	
	public List<Products> list();
	
	public Products get(String id);

	public boolean save(Products product);
	
	public boolean update(Products product);

}
