package com.niit.goonline.dao;

import java.util.List;

import com.niit.goonline.Catagories;

public interface CatagoriesDAO {
public List<Catagories> list();
	
	public Catagories get(String CatagoryId);
	
	public boolean save(Catagories cata);
	
	public boolean update(Catagories cata);

}
