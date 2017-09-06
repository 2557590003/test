package org.qztc.service.impl;

import java.util.List;

import org.qztc.dao.DingdangDao;
import org.qztc.dao.impl.DingdangDaoImpl;
import org.qztc.entity.Dingdang;
import org.qztc.service.DingDangService;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

public class DingDangServiceImpl implements DingDangService {
	private DingdangDao orderDao=null;
	public DingDangServiceImpl() {
		orderDao = new DingdangDaoImpl();
	}
	@Override
	public void add(Dingdang user) {
		orderDao.add(user);
		
	}
	@Override
	public List<Dingdang> list(String o_name) {
		return orderDao.list(o_name);
	}
	@Override
	public String getListJson(String o_name) {
		List<Dingdang> list = orderDao.list(o_name);
		ObjectMapper mapper=new ObjectMapper();
		String josn=null;
		try {
			josn=mapper.writeValueAsString(list);
			
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return josn;
	}
	
	
}
