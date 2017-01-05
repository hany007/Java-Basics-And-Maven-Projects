package com.niit.goshoes.dao;

import java.util.List;

import com.niit.goshoes.Supplier;

public interface SupplierDAO {
	public List<Supplier> list();
	
	public Supplier get(String SupplierId);
	
	public boolean save(Supplier sup);
	
	public boolean update(Supplier sup);

}
