package org.qztc.dao;

import java.util.List;

import org.qztc.entity.User;

public interface UserDao {
	public List<User> list(String user_name);
	public void add(User user);
	public User get(String user_name);
}
