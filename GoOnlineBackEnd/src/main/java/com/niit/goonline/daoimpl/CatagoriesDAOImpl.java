package com.niit.goonline.daoimpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.goonline.Catagories;
import com.niit.goonline.dao.CatagoriesDAO;

@Repository
public class CatagoriesDAOImpl implements CatagoriesDAO {
	@Autowired
	private SessionFactory sessionFactory;

	public CatagoriesDAOImpl() {

	}

	public CatagoriesDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public List<Catagories> list() {

		@SuppressWarnings("unchecked")
		List<Catagories> listcatagories = (List<Catagories>) sessionFactory.getCurrentSession()
				.createCriteria(Catagories.class).setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

		return listcatagories;
	}

	@Transactional

	public Catagories get(String CatagoryId) {
		String hql = "from Catagories where catagoryId=" + CatagoryId;
		Query query = sessionFactory.getCurrentSession().createQuery(hql);

		@SuppressWarnings("unchecked")
		List<Catagories> listCatagories = (List<Catagories>) query.list();
		if (listCatagories != null && !listCatagories.isEmpty()) {
			return listCatagories.get(0);
		}
		return null;
	}

	@Transactional
	public boolean save(Catagories cata) {
		sessionFactory.getCurrentSession().save(cata);
		return false;
	}

	@Transactional
	public boolean update(Catagories cata) {
		sessionFactory.getCurrentSession().update(cata);
		return false;
	}

}
