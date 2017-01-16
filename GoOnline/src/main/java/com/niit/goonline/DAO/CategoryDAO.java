package com.niit.goonline.DAO;

import java.util.List;


import com.niit.goonline.model.Category;

public interface CategoryDAO {
	
	public List<Category> list();
	
	public Category get(String id);
	
	public boolean save(Category category);
	
	public boolean update(Category category);
}
