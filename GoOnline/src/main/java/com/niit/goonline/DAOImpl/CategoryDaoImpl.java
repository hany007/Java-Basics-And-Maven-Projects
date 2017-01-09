package com.niit.goonline.DAOImpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.goonline.DAO.CategoryDAO;
import com.niit.goonline.model.Category;
@Repository("categoryDAO")
public class CategoryDaoImpl implements CategoryDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	//At the time of creation of instance, you have to pass sessionFactory
	
	public CategoryDaoImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory = sessionFactory;
		System.out.println(sessionFactory);
	}
	
	public List<Category> list() {
		Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Product");
        List<Category> categoryList = query.list();
        session.flush();

        return categoryList;
	}

	public Category get(String id) {
		return (Category)sessionFactory.getCurrentSession().get(Category.class, id);
	}
@Transactional
	public boolean save(Category category) {
		try{
			sessionFactory.getCurrentSession().save(category);
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
		return true;

	}

	public boolean update(Category category) {
		try{
			sessionFactory.getCurrentSession().update(category);
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
		return true;

	}

	public void delete(Category category) {
		sessionFactory.getCurrentSession().delete(category);
		
	}
}