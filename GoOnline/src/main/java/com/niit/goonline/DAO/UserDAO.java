package com.niit.goonline.DAO;

import java.util.List;

import com.niit.goonline.model.User;

public interface UserDAO {
	public List<User> list();

	public User get(String id);

	public User validate(String id, String password);

	public boolean save(User user);

	public boolean update(User user);

	public void delete(User user);

}
