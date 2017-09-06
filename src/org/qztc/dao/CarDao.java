package org.qztc.dao;

import java.util.List;

import org.qztc.entity.Car;
public interface CarDao {
	public List<Car> list(String c_date,String c_qd,String c_zd);
	public void update(String c_number,String c_id);
	public Car get(String c_id);
}
