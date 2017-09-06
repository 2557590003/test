package org.qztc.util;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {
	private static Connection connection=null;
	static String url="jdbc:oracle:thin:@localhost:1521:oracle11g";
	static String user="scott";
	static String password="Jsjkxyjs1b";
	        
		
	public static Connection getConnection(){
		try {
			String className="oracle.jdbc.driver.OracleDriver";
			Class.forName(className);
			connection = DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return connection;
	}
}
