package com.niit.goonline.DAO;

import java.util.List;

import com.niit.goonline.model.Product;

public interface ProductDAO {
	
	public boolean save(Product product);

	public boolean update(Product product);

	public boolean saveOrUpdate(Product product);

	public boolean delete(String id);

	public Product get(String id);
	
	public Product getByName(String name);

	public List<Product> list();

}

