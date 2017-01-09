package com.niit.goonline.DAOImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.niit.goonline.DAO.UserDAO;
import com.niit.goonline.model.User;

public class UserDAOImpl implements UserDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public UserDAOImpl() {

	}

	public UserDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public List<User> list() {
		@SuppressWarnings("unchecked")
		List<User> listuser = (List<User>) sessionFactory.getCurrentSession().createCriteria(User.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return listuser;
	}

	@Transactional
	public User get(String id) {
		String hql = "from User where userId=" + id;
		Query query = sessionFactory.getCurrentSession().createQuery(hql);

		@SuppressWarnings("unchecked")
		List<User> listUser = (List<User>) query.list();
		if (listUser != null && !listUser.isEmpty()) {
			return listUser.get(0);
		}
		return null;
	}

	@Transactional
	public boolean save(User user) {
		sessionFactory.getCurrentSession().save(user);
		return false;
	}

	@Transactional
	public boolean update(User user) {
		sessionFactory.getCurrentSession().update(user);
		return false;
	}

	@Transactional
	public void delete(User user) {

		sessionFactory.getCurrentSession().delete(user);

	}

	@Transactional
	public User validate(String id, String password) {
		String hql = "from user where Userd ='" + id + "'and password='" + password + "'";

		Query query = sessionFactory.getCurrentSession().createQuery(hql);

		return (User) query.uniqueResult();
	}

}
