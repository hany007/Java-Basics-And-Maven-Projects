package com.niit.goshoes.daoimpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.niit.goshoes.Supplier;
import com.niit.goshoes.dao.SupplierDAO;

public class SupplierDAOImpl implements SupplierDAO {
	@Autowired
    private SessionFactory sessionFactory;
	
	public SupplierDAOImpl(){
		
	}
	public SupplierDAOImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory = sessionFactory;
	}

	public List<Supplier> list() {
		@SuppressWarnings("unchecked")
		List<Supplier> listsupplier = (List<Supplier>) sessionFactory.getCurrentSession()
				.createCriteria(Supplier.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return listsupplier;
	}

	public Supplier get(String SupplierId) {
		String hql ="from Supplier where supplierId="+SupplierId;
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<Supplier> listSupplier = (List<Supplier>) query.list();
		if(listSupplier != null && !listSupplier.isEmpty()){
			return listSupplier.get(0);
		}
		return null;
	}

	public boolean save(Supplier sup) {
		sessionFactory.getCurrentSession().save(sup);
		return false;
	}

	public boolean update(Supplier sup) {
		sessionFactory.getCurrentSession().update(sup);
		return false;
	}

}
