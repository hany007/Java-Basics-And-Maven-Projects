package com.niit.goshoes.dao;

import java.util.List;

import com.niit.goshoes.Catagories;

public interface CatagoriesDAO {
public List<Catagories> list();
	
	public Catagories get(String CatagoryId);
	
	public boolean save(Catagories cata);
	
	public boolean update(Catagories cata);

}
