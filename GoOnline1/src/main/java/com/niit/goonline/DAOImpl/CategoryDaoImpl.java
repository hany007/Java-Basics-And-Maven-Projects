package com.niit.goonline.DAOImpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.goonline.DAO.CategoryDAO;
import com.niit.goonline.model.Category;

@Repository("categoryDAO")
@Transactional
public class CategoryDaoImpl implements CategoryDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Transactional
	public Category get(String id) {

		String hql = "from Category where id='" + id + "'";
		Session session = sessionFactory.openSession();
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Category> listCategory = (List<Category>) query.list();
		if (listCategory != null && !listCategory.isEmpty()) {
			return listCategory.get(0);
		}
		return null;
	}

	@Transactional
	public Category getByName(String name) {

		String hql = "from Category where name='" + name + "'";

		Session session = sessionFactory.openSession();
		Query query = session.createQuery(hql);

		@SuppressWarnings("unchecked")
		List<Category> listCategory = (List<Category>) query.list();

		if (listCategory != null && !listCategory.isEmpty()) {

			return listCategory.get(0);
		}

		return null;
	}

	@Transactional
	public boolean saveOrUpdate(Category category) {

		try {
			System.out.println("inside save or update");
			Session session = sessionFactory.openSession();
			session.saveOrUpdate(category);
			session.flush();

			return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block

			e.printStackTrace();
			return false;
		}
	}

	@Transactional
	public boolean delete(String id) {
		try {
			Category categoryToDelete = new Category();
			categoryToDelete.setId(id);
			Session session = sessionFactory.openSession();
			session.delete(categoryToDelete);
			session.flush();

			return true;
		} catch (HibernateException e) {
			// TODO Auto-generated catch block

			e.printStackTrace();
			return false;
		}
	}

	@Transactional
	public List<Category> list() {

		String hql = "from Category ORDER BY ID ASC";
		Session session = sessionFactory.openSession();
		Query query = session.createQuery(hql);
		List<Category> list = query.list();
		if (list == null || list.isEmpty()) {
			System.out.println("list is empty");
		}

		return list;
	}

	public boolean save(Category category) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean update(Category category) {
		// TODO Auto-generated method stub
		return false;
	}
}