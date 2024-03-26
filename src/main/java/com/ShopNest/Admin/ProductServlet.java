package com.ShopNest.Admin;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;



@WebServlet("/addProduct")
public class ProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int pid = Integer.parseInt(request.getParameter("product-id"));
				
		String pname = (request.getParameter("product-name")).toLowerCase();
		
		String pdesc = request.getParameter("product-description");
		
		int pprice = Integer.parseInt(request.getParameter("product-price"));
		
		String pimg = request.getParameter("product-image");
		
		Connection con = null;
		
		PrintWriter pw = response.getWriter();
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			
			String user = "system";
			
			String pass = "eswar";
			
			con = DriverManager.getConnection(url, user, pass);
			
			String sql = "Insert into products values(?, ?, ?, ?, ?)";
			
			PreparedStatement ps = con.prepareStatement(sql);
			
			ps.setInt(1, pid);
			
			ps.setString(2, pname);
			
			ps.setString(3, pdesc);
			
			ps.setInt(4, pprice);
			
			
			ps.setString(5, pimg);
			
			int i = ps.executeUpdate();
			
			if(i>0) {
				
				pw.println("Record Inserted Succussfully");
				
			}
			else {
				pw.println("Failed Insertion");
			}
			
		}catch(Exception e){
			
			pw.println("Exception : "+e.getMessage());
			
			pw.println("Issue with Fetching Images");
			
		}
		finally {
			
			if(con!=null) {
				
				try {
					con.close();
				} catch (SQLException e) {
					
					e.printStackTrace();
				}
				
			}
				
	}

}


	
}
