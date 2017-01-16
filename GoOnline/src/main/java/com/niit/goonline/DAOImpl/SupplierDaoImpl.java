package com.niit.goonline.DAOImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.goonline.DAO.SupplierDAO;
import com.niit.goonline.model.Supplier;

@Repository("supplierDAO")
public class SupplierDaoImpl implements SupplierDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	//At the time of creation of instance, you have to pass sessionFactory
	
	public SupplierDaoImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory = sessionFactory;
		System.out.println(sessionFactory);
	}


	public List<Supplier> list() {
		Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Product");
        List<Supplier> supplierList = query.list();
        session.flush();

        return supplierList;
	}

	public Supplier get(String id) {
		return (Supplier)sessionFactory.getCurrentSession().get(Supplier.class, id);
	}
@org.springframework.transaction.annotation.Transactional
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
