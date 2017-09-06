package org.qztc.dao;

import java.util.List;

import org.qztc.entity.Dingdang;

public interface DingdangDao {
	public List<Dingdang> list(String o_name);
	public void add(Dingdang user);
}
