package com.ShopNest.Customers;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class HomeServlet
 */
@WebServlet("/home")
public class HomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HomeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html");
		
		PrintWriter pr = response.getWriter();
		 
		HttpSession session = request.getSession(false);
		
		if(session != null) {
			
			String Usname = (String) session.getAttribute("uname");
			
			if(Usname.equalsIgnoreCase("admin1234")) {
				
				pr.print("Welcome " + Usname);
				
				pr.print("<br><a href=\"Admin.jsp\">Click Here Continue Your Shooping</a></br>");
				
				pr.print("<br/><a href=\"logout\">Logout</a>");
			}
			else {
				pr.print("Welcome " + Usname);
				
				pr.print("<br><a href=\"NewHome.jsp\">Click Here Continue Your Shooping</a></br>");
				
				pr.print("<br/><a href=\"logout\">Logout</a>");
			}
		}
		else {
			response.sendRedirect("Home.jsp");
		}
		pr.close();
	
	}

	

}
