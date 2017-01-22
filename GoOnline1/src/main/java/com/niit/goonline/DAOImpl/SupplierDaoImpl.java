package com.niit.goonline.DAOImpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.HibernateException;
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
	public SupplierDaoImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;		
	}
	
	public SupplierDaoImpl( ) {
	
	}
	
	
	@Transactional
	public Supplier getByName(String name) {


		String hql = "from Supplier where name='" + name + "'";

		Query query = sessionFactory.openSession().createQuery(hql);

		@SuppressWarnings("unchecked")
		List<Supplier> listSupplier = (List<Supplier>) query.list();

		if (listSupplier != null && !listSupplier.isEmpty()) {
			return listSupplier.get(0);
		}

		return null;
	}
	@Transactional
	public boolean save(Supplier supplier) {
		// TODO Auto-generated method stub

		try {
			sessionFactory.openSession().save(supplier);
			return true;
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}

	@Transactional
	public boolean saveOrUpdate(Supplier supplier) {
		try {
			Session session = sessionFactory.openSession();
			session.saveOrUpdate(supplier); 
			session.flush();
			return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}

	@Transactional
	public boolean update(Supplier supplier) {
		try {
			sessionFactory.openSession().update(supplier);
			sessionFactory.openSession().flush();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Transactional
	public boolean delete(String id) {
		try {
			Supplier supplierToDelete = new Supplier();
			supplierToDelete.setId(id);
			Session session = sessionFactory.openSession();
			session.delete(supplierToDelete);
			session.flush();
			return true;
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}

	@Transactional
	public Supplier get(String id) {


		String hql = "from Supplier where id='" + id + "'";

		Query query = sessionFactory.openSession().createQuery(hql);

		@SuppressWarnings("unchecked")
		List<Supplier> listSupplier = (List<Supplier>) query.list();

		if (listSupplier != null && !listSupplier.isEmpty()) {
			return listSupplier.get(0);
		}

		return null;
	}

	@Transactional
	public List<Supplier> list() {

		String hql = "from Supplier ORDER BY ID ASC";
		Query query = sessionFactory.openSession().createQuery(hql);
		List<Supplier> list = query.list();
		if (list == null || list.isEmpty()) {
			System.out.println("No products available");
		}
		return list;
	}
}