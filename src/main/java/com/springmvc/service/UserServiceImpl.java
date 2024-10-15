package com.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springmvc.dao.UserDao;
import com.springmvc.entity.User;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserDao userDao;

	@Override
	public int registerUser(User user) {

		int i = userDao.saveUser(user);

		return i;
	}

	@Override
	public int loginUser(User user) {

		User u = userDao.getUser(user);

		return 0;
	}

	@Override
	public List<User> getUsers() {

		return userDao.getUsersList();
	}

	@Override
	public void deleteUserById(int id) {
		
		userDao.deleteUserById(id);
		
	}

	@Override
	public User getUserById(int id) {
	
		return userDao.getUserById(id);
	}

	@Override
	public int updateUser(User user) {
		
		return userDao.updateUser(user);
	}

}
