package org.qztc.service;

import java.util.List;

import org.qztc.entity.Dingdang;

public interface DingDangService {
	public List<Dingdang> list(String o_name);
	public void add(Dingdang user);
	public String getListJson(String o_name);
}
