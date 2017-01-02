package com.niit.goonline.daoimpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.goonline.Products;
import com.niit.goonline.dao.ProductsDAO;

@Repository
public class ProductsDAOImpl implements ProductsDAO {
	@Autowired
	private SessionFactory sessionFactory;

	public ProductsDAOImpl() {

	}

	public ProductsDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public List<Products> list() {
		@SuppressWarnings("unchecked")
		List<Products> listproducts = (List<Products>) sessionFactory.getCurrentSession().createCriteria(Products.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

		return listproducts;
	}

	@Transactional

	public Products get(String ProductId) {
		String hql = "from Products where productId=" + ProductId;
		Query query = sessionFactory.getCurrentSession().createQuery(hql);

		@SuppressWarnings("unchecked")
		List<Products> listProducts = (List<Products>) query.list();
		if (listProducts != null && !listProducts.isEmpty()) {
			return listProducts.get(0);
		}

		return null;
	}

	@Transactional

	public boolean save(Products pro) {

		sessionFactory.getCurrentSession().save(pro);

		return false;
	}

	@Transactional

	public boolean update(Products pro) {

		sessionFactory.getCurrentSession().update(pro);
		return false;
	}

}
