package com.springmvc.service;

import java.util.List;

import com.springmvc.entity.User;

public interface UserService {

	public int registerUser(User user);

	public int loginUser(User user);

	public List<User> getUsers();
	
	public void deleteUserById(int id);
	
	public User getUserById(int id);
	
	public int updateUser(User user);


}
