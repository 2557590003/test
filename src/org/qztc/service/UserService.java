package org.qztc.service;

import java.util.List;

import org.qztc.entity.User;

public interface UserService {
	public List<User> list(String user_name);
	public void add(User user);
	public User get(String user_name);
}
