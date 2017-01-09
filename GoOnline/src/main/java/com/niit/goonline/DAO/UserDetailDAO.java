package com.niit.goonline.DAO;

import java.util.List;

import com.niit.goonline.model.UserDetail;

public interface UserDetailDAO {
	public List<UserDetail> list();

	public UserDetail getById(int UserId);

	public UserDetail getByName(String UserName);

	public void addUser(UserDetail userDetail);

	public boolean validate(String name);

}
