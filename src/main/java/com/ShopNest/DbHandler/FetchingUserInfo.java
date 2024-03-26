package com.ShopNest.DbHandler;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.ShopNest.Carts.Product;
import com.ShopNest.OrderNow.BuyCart;
import com.mysql.jdbc.Statement;



public class FetchingUserInfo {

	
	public static List fetchUserInformation() {
	
		String driver = "oracle.jdbc.driver.OracleDriver";
		
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		
		String user = "system";
		
		String password = "eswar";
		
		String sql = "SELECT uname, mail, gender, address FROM customers";
		
		List ulist = new ArrayList();
		
		try {
			
			Class.forName(driver);
			
			Connection conn = DriverManager.getConnection(url, user, password) ;
			
			//Statement st = conn.createStatement();
			
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				
				String temp = rs.getString(1)+":"+rs.getString(2)+":"+rs.getString(3)+":"+rs.getString(4);
				
				ulist.add(temp);
				
			}
			
		}catch(Exception e) {
		
			System.out.println("Problem In Fetching Data");
			
		}
		
		return ulist;
		
	}
	
	
	
	
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
			
		}
		
		return ilist;		
	}
	
	
	public static  Product getProductById(int pid) {
		
	String driver = "oracle.jdbc.driver.OracleDriver";
		
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		
		String user = "system";
		
		String password = "eswar";
		
		String sql = "SELECT pname, pdesc, pimg, pprice FROM products WHERE pid=?";
		
		Product p = null;
		
		try {
			
			Class.forName(driver);
			
			Connection conn = DriverManager.getConnection(url, user, password) ;
			
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setInt(1, pid);
			
			ResultSet rs = ps.executeQuery();
			
			rs.next();
			
			String pname = rs.getString(1);
			
			String pdesc = rs.getString(2);
			
			String pimg = rs.getString(3);
			
			int pprice = rs.getInt(4);
			
			p = new Product(pid, pname, pdesc, pimg, pprice);
			
			
		}catch(Exception e) {
			
			System.out.println("Problem While Fetchnig");
			e.printStackTrace();
		}
		finally{
			return p;
		}
	}
	
	
	
	
	public static  BuyCart getBuyNowById(int pid) {
		
		String driver = "oracle.jdbc.driver.OracleDriver";
			
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			
			String user = "system";
			
			String password = "eswar";
			
			String sql = "SELECT pname, pprice FROM products WHERE pid=?";
			
			BuyCart b = null;
			
			try {
				
				Class.forName(driver);
				
				Connection conn = DriverManager.getConnection(url, user, password) ;
				
				PreparedStatement ps = conn.prepareStatement(sql);
				
				ps.setInt(1, pid);
				
				ResultSet rs = ps.executeQuery();
				
				rs.next();
				
				String pname = rs.getString(1);
				
				int pprice = rs.getInt(2);
				
				b = new BuyCart(pid, pname, pprice);
				
				
			}catch(Exception e) {
				
				System.out.println("Problem While Fetchnig");
				e.printStackTrace();
			}
			finally{
				return b;
			}
		}
	
	
		
}
