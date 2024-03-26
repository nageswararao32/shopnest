package com.ShopNest.Customers;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/reg")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uname = request.getParameter("uname");
		
		String passWord = request.getParameter("passWord");
		
		String mail = request.getParameter("myMail");
		
		String gender = request.getParameter("gender");
		
		String address = request.getParameter("address");
		
		Connection con = null;
		
		PrintWriter pw = response.getWriter();
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			
			String user = "system";
			
			String pass = "eswar";
			
			con = DriverManager.getConnection(url, user, pass);
			
			String sql = "Insert into customers values(?, ?, ?, ?, ?)";
			
			PreparedStatement ps = con.prepareStatement(sql);
			
			ps.setString(1, uname);
			
			ps.setString(2, mail);
			
			ps.setString(3, passWord);
			
			ps.setString(4, gender);
			
			ps.setString(5, address);
			
			int i = ps.executeUpdate();
			
			if(i>0) {
				
				pw.println("Record Inserted Succussfully");
				
				response.setContentType("text/html");
				pw.println("<script type=\"text/javascript\">");
				pw.println("window.alert('New User Registered Successfully!')");
				pw.println("</script>");
				
			}
			else {
				pw.println("Failed Insertion");
			}
			
		}catch(Exception e){
			
			pw.println("Exception : "+e.getMessage());
			
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
		
		response.sendRedirect("login.jsp");
		
	}

}
