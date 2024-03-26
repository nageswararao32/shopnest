package com.ShopNest.DbHandler;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class DbConnection {

	public static void DbConnections() {
		// TODO Auto-generated method stub
	String driver = "oracle.jdbc.driver.OracleDriver";
		
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		
		String user = "system";
		
		String password = "eswar";
		
		
		try {
			
			Class.forName(driver);
			
			Connection conn = DriverManager.getConnection(url, user, password) ;
			
			System.out.println("Connected");
			
		}catch(Exception e) {
		
			System.out.println("Problem In Fetching Data");
			
		}

	}

}
