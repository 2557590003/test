package org.qztc.service.impl;

import java.util.List;

import org.qztc.dao.UserDao;
import org.qztc.dao.impl.UserDaoImpl;
import org.qztc.entity.User;
import org.qztc.service.UserService;

public class UserServiceImpl implements UserService {
	private UserDao userDao=null;
	public UserServiceImpl() {
		userDao = new UserDaoImpl();
	}
	@Override
	public List<User> list(String user_name) {
		return userDao.list(user_name);
	}

	@Override
	public void add(User user) {
		userDao.add(user);
	}

	@Override
	public User get(String user_name) {
		return userDao.get(user_name);
	}

}