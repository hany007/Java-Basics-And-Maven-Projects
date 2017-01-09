package com.niit.goonline.DAO;

import java.util.List;

import com.niit.goonline.model.Supplier;

public interface SupplierDAO {
	
	public List<Supplier> list();
	
	public Supplier get(String id);
	
	public boolean save(Supplier supplier);
	
	public boolean update(Supplier supplier);

}
