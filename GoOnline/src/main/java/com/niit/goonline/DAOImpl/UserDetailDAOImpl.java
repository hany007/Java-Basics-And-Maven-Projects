package com.niit.goonline.DAOImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.goonline.DAO.UserDetailDAO;
import com.niit.goonline.model.Cart;
import com.niit.goonline.model.User;
import com.niit.goonline.model.UserDetail;
import com.niit.goonline.model.UserRole;

@Repository("userDetailDAO")
@Transactional
public class UserDetailDAOImpl implements UserDetailDAO {
	@Autowired
	private SessionFactory sessionFactory;

	public List<UserDetail> list() {
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from UserDetial");
		List<UserDetail> userDetail = query.list();
		return null;
	}

	public UserDetail getById(int UserId) {
		Session session = sessionFactory.openSession();
		return (UserDetail) session.get(UserDetail.class, UserId);
	}

	public UserDetail getByName(String UserName) {
		Session session = sessionFactory.openSession();

		return (UserDetail) session.get(UserDetail.class, UserName);
	}

	public void addUser(UserDetail userDetail) {
		Session session = sessionFactory.openSession();
		session.saveOrUpdate(userDetail);
		User newUser = new User();
		newUser.setName(userDetail.getUserName());
		newUser.setPassword(userDetail.getPassword());
		newUser.setEnable(true);
		newUser.setId(userDetail.getId());

		UserRole newUserRole = new UserRole();
		newUserRole.setUsername(userDetail.getUserName());
		newUserRole.setRole("ROLE_ADMIN");

		session.saveOrUpdate(newUser);
		session.saveOrUpdate(newUserRole);

		session.saveOrUpdate(userDetail);
		
		session.flush();

	}

	public boolean validate(String name) {
		String hql = "from UsersDetail where USER_NAME='" + name + "'";
		Query query = sessionFactory.openSession().createQuery(hql);

		List<UserDetail> list = query.list();
		if (list != null) {
			return false;// invalid user
		} else {
			return true;// valid user
		}

	}

}
