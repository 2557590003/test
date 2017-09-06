package org.qztc.dao.impl;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.qztc.dao.UserDao;
import org.qztc.entity.User;
import org.qztc.util.DBUtil;

public class UserDaoImpl implements UserDao{
	private User user=null;
	@Override
	public List<User> list(String user_name) {	
		//创建一个List集合
		List<User> list =new ArrayList<User>();
		//创建jdbc连接
		Connection conn=DBUtil.getConnection();
		/*
		 * 	private String user_id;
	private String user_name;
	private String user_password;
	private String user_phone;
	private String user_address;
		 * 
		 * 
		 * 
		 * */
		
		PreparedStatement ps=null;
		ResultSet rs=null;
		String sql="select * from users where user_name=?";
		try {
			ps=conn.prepareStatement(sql);
			ps.setString(1, user_name);
			rs=ps.executeQuery();
			while(rs.next()){
				user=new User(rs.getString("user_id"), rs.getString("user_name"), rs.getString("user_password"), rs.getString("user_phone"), rs.getString("user_address"));
				list.add(user);
			}
			
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
	public void add(User user) {
		Connection conn=DBUtil.getConnection();
		String sql="insert into users(user_id,user_name,user_password,user_phone,user_address) values(?,?,?,?,?)";
		PreparedStatement ps=null;
		try {
			ps= conn.prepareStatement(sql);
			ps.setString(1, user.getUser_id());
			ps.setString(2, user.getUser_name());
			ps.setString(3, user.getUser_password());
			ps.setString(4, user.getUser_phone());
			ps.setString(5, user.getUser_address());
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

	@Override
	public User get(String user_name) {
		Connection conn = DBUtil.getConnection();
		String sql="select * from users where user_name=?";
		PreparedStatement ps=null;
		ResultSet rs=null;
		try {
			ps=conn.prepareStatement(sql);
			ps.setString(1, user_name);
			rs= ps.executeQuery();
			if(rs.next()){
				user=new User(rs.getString("user_id"), rs.getString("user_name"), rs.getString("user_password"), rs.getString("user_phone"), rs.getString("user_address"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return user;
	}

	
}
