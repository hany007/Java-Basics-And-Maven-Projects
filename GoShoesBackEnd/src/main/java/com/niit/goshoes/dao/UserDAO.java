package com.niit.goshoes.dao;

import java.util.List;

import com.niit.goshoes.User;

public interface UserDAO {
	public List<User> list();
	
	public User get(String UserId);
	
	public User validate(String UserId,String Password);
	
	public boolean save(User user);
	
	public boolean update(User user);

}
