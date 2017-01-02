package com.niit.goonline.daoimpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.goonline.Supplier;
import com.niit.goonline.dao.SupplierDAO;

@Repository
public class SupplierDAOImpl implements SupplierDAO {
	@Autowired
	private SessionFactory sessionFactory;

	public SupplierDAOImpl() {

	}

	public SupplierDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public List<Supplier> list() {
		@SuppressWarnings("unchecked")
		List<Supplier> listsupplier = (List<Supplier>) sessionFactory.getCurrentSession().createCriteria(Supplier.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return listsupplier;
	}

	@Transactional
	public Supplier get(String SupplierId) {
		String hql = "from Supplier where supplierId=" + SupplierId;
		Query query = sessionFactory.getCurrentSession().createQuery(hql);

		@SuppressWarnings("unchecked")
		List<Supplier> listSupplier = (List<Supplier>) query.list();
		if (listSupplier != null && !listSupplier.isEmpty()) {
			return listSupplier.get(0);
		}
		return null;
	}

	@Transactional
	public boolean save(Supplier sup) {
		sessionFactory.getCurrentSession().save(sup);
		return false;
	}

	@Transactional
	public boolean update(Supplier sup) {
		sessionFactory.getCurrentSession().update(sup);
		return false;
	}

}
