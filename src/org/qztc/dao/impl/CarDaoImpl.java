package org.qztc.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import org.qztc.dao.CarDao;
import org.qztc.entity.Car;
import org.qztc.util.DBUtil;

public class CarDaoImpl implements CarDao {
	private Car car=null;
	@Override
	public List<Car> list(String c_date,String c_qd,String c_zd) {
		List<Car> list =new ArrayList<Car>();
		//创建jdbc连接
		Connection conn=DBUtil.getConnection();
		
		PreparedStatement ps=null;
		ResultSet rs=null;
		String sql="select * from car where c_date=? and c_qd=? and c_zd=?";
		try {
			ps=conn.prepareStatement(sql);
			ps.setString(1, c_date);
			ps.setString(2, c_qd);
			ps.setString(3, c_zd);
			rs=ps.executeQuery();
			while(rs.next()){
				
				car=new Car(rs.getString("c_id"),rs.getString("c_ks"), rs.getString("c_time"),rs.getString("c_number") , rs.getString("c_qd"), rs.getString("c_zd"),rs.getString("c_money"),rs.getString("c_date"));
				list.add(car);
			}
			/*
			 * private String c_id;
	private String c_ks;
	private String c_time;
	private String c_number;
	private String c_qd;
	private String c_zd;
	private String c_money;
	private String c_date;
			 * 
			 * 
			 * */
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try {
				if(rs!=null){
					rs.close();
				}
				if(ps!=null){
					ps.close();
				}
				if(conn!=null){
					conn.close();
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;
	}
	@Override
	public void update(String c_number,String c_id) {
		Connection conn = DBUtil.getConnection();
		String sql="update car set c_number=? where c_id=?";
		PreparedStatement ps=null;
		try {
			ps=conn.prepareStatement(sql);
			ps.setString(1,c_number);
			ps.setString(2,c_id);
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				ps.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	public Car get(String c_id) {
		Connection conn = DBUtil.getConnection();
		String sql="select * from car where c_id=?";
		PreparedStatement ps=null;
		ResultSet rs=null;
		try {
			ps=conn.prepareStatement(sql);
			ps.setString(1,c_id);
			rs= ps.executeQuery();
			if(rs.next()){
				car=new Car(rs.getString("c_id"),rs.getString("c_ks"), rs.getString("c_time"),rs.getString("c_number") , rs.getString("c_qd"), rs.getString("c_zd"),rs.getString("c_money"),rs.getString("c_date"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return car;
	}

}
