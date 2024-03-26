package com.ShopNest.Customers;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/log")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		// TODO Auto-generated method stub
		
		response.setContentType("text/html;charset=UTF-8");
		
		String uname = request.getParameter("uname");
		
		String pass = request.getParameter("pass");
		
		
		boolean val = Validator.isValid(uname, pass);
		
		PrintWriter pw=response.getWriter();
		
		if(val == true && uname.equals("admin1234")) {
			
			response.setContentType("text/html");
			pw.println("<script type=\"text/javascript\">");
			pw.println("window.alert('Login Successfull')");
			pw.println("</script>");
			
			HttpSession session = request.getSession();
			session.setAttribute("uname", uname);
			response.sendRedirect("Admin.jsp");
		}
		else if(val==true) {
			
			response.setContentType("text/html");
			pw.println("<script type=\"text/javascript\">");
			pw.println("window.alert('Login Successfull')");
			pw.println("</script>");
			HttpSession session = request.getSession();
			session.setAttribute("uname", uname);	
			response.sendRedirect("NewHome.jsp");
			
		}
		else {
					
			response.setContentType("text/html");
			pw.println("<script type=\"text/javascript\">");
			pw.println("alert('Invalid Username or Password');");
			pw.println("</script>");
			RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
			rd.include(request, response);		
		}
	}

}
