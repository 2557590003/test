package org.qztc.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.qztc.dao.DingdangDao;
import org.qztc.entity.Dingdang;
import org.qztc.util.DBUtil;

public class DingdangDaoImpl implements DingdangDao {
	private Dingdang dingdang=null;

	@Override
	public List<Dingdang> list(String o_name) {
		List<Dingdang> list =new ArrayList<Dingdang>();
		//创建jdbc连接
		Connection conn=DBUtil.getConnection();
		
		PreparedStatement ps=null;
		ResultSet rs=null;
		String sql="select * from dingdang where o_name=? ";
		try {
			ps=conn.prepareStatement(sql);
			ps.setString(1, o_name);
			rs=ps.executeQuery();
			while(rs.next()){
				dingdang=new Dingdang(rs.getString("o_id"),rs.getString("o_ddsj"),rs.getString("o_name") ,rs.getString("o_qd"), rs.getString("o_zd"), rs.getString("o_ks"),rs.getString("o_time"),rs.getString("o_number"),rs.getString("o_money"),rs.getString("o_date"));
				list.add(dingdang);
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
	public void add(Dingdang dingdang) {
		Connection conn=DBUtil.getConnection();
		String sql="insert into dingdang(o_id,o_ddsj,o_name,o_qd,o_zd,o_ks,o_time,o_number,o_money,o_date) values(?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement ps=null;
		try {
			ps= conn.prepareStatement(sql);
			ps.setString(1, dingdang.getO_id());
			ps.setString(2, dingdang.getO_ddsj());
			ps.setString(3, dingdang.getO_name());
			ps.setString(4, dingdang.getO_qd());
			ps.setString(5, dingdang.getO_zd());
			ps.setString(6, dingdang.getO_ks());
			ps.setString(7, dingdang.getO_time());
			ps.setString(8, dingdang.getO_number());
			ps.setString(9, dingdang.getO_money());
			ps.setString(10, dingdang.getO_date());
			ps.executeUpdate();
		} catch (SQLException e) {
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
	
}
