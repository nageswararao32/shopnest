package com.ShopNest.DbHandler;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class FetchProductInfo {
	
	public static List fetchProductsInformation() {
		
		String driver = "oracle.jdbc.driver.OracleDriver";
		
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		
		String user = "system";
		
		String password = "eswar";
		
		String sql = "SELECT pid, pname, pdesc, pprice, pimg FROM products";
		
		List ilist = new ArrayList();
		
		try {
			
			Class.forName(driver);
			
			Connection conn = DriverManager.getConnection(url, user, password) ;
			
			//Statement st = conn.createStatement();
			
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				
				String temp = rs.getInt(1)+":"+rs.getString(2)+":"+rs.getString(3)+":"+rs.getInt(4)+":"+rs.getString(5);
				
				ilist.add(temp);
				
			}
			
		}catch(Exception e) {
		
			System.out.println("Problem In Fetching Data");
			e.printStackTrace();
			
		}
		
		return ilist;
		
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		fetchProductsInformation();
		System.out.println("Fetched");
	}

}
