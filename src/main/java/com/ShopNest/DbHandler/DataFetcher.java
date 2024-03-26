package com.ShopNest.DbHandler;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;




public class DataFetcher {
	
	public static String  fetchPassword(String uname) {
		
		
		String driver = "oracle.jdbc.driver.OracleDriver";
		
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		
		String user = "system";
		
		String password = "eswar";
		
		String sql = "SELECT password FROM customers WHERE uname=?";
		
		String dbPass = "";
		
		try {
			
			Class.forName(driver);
			
			Connection conn = DriverManager.getConnection(url, user, password) ;
			
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setString(1, uname);
			
			ResultSet rs = ps.executeQuery();
			
			rs.next();
			
			dbPass = rs.getString(1);
			
			
		}catch(Exception e) {
			
			System.out.println("Login Issues");
			
			e.printStackTrace();
		}
		
		return dbPass;
		
	}



}


