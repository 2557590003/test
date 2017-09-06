package org.qztc.service.impl;

import java.util.List;

import org.qztc.dao.CarDao;
import org.qztc.dao.impl.CarDaoImpl;
import org.qztc.entity.Car;
import org.qztc.service.CarService;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

public class CarServiceImpl implements CarService {

	private CarDao carDao=null;
	public CarServiceImpl() {
		carDao = new CarDaoImpl();
	}
	@Override
	public List<Car> list(String c_date, String c_qd, String c_zd) {
		return carDao.list(c_date,c_qd,c_zd);
	}
	@Override
	public void update(String c_number,String c_id){
		System.out.println("c_number----->"+c_number);
		carDao.update(c_number,c_id);	
	}
	@Override
	public String getListJson(String c_date,String c_qd,String c_zd) {
		List<Car> list = carDao.list(c_date,c_qd,c_zd);
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
	@Override
	public Car get(String c_id) {
		return carDao.get(c_id);
	}

}
