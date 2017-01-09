package com.niit.goonline.DAOImpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.niit.goonline.DAO.SupplierDAO;
import com.niit.goonline.model.Supplier;

public class SupplierDaoImpl implements SupplierDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	//At the time of creation of instance, you have to pass sessionFactory
	
	public SupplierDaoImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory = sessionFactory;
	}


	public List<Supplier> list() {
		return null;
	}

	public Supplier get(String id) {
		return (Supplier)sessionFactory.getCurrentSession().get(Supplier.class, id);
	}

	public boolean save(Supplier supplier) {
		try{
			sessionFactory.getCurrentSession().save(supplier);
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
		return true;
	}

	public boolean update(Supplier supplier) {
		try{
			sessionFactory.getCurrentSession().update(supplier);
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
		return true;
	}
}