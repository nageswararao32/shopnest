package com.ShopNest.Carts;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

import com.ShopNest.DbHandler.FetchingUserInfo;

/**
 * Servlet implementation class AddServlet1
 */
@WebServlet("/byNow")
public class AddServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int productId = Integer.parseInt(req.getParameter("productId"));
		
		Product p = FetchingUserInfo.getProductById(productId);
		
		HttpSession session = req.getSession(false);
		
		String Usname = (String) session.getAttribute("uname");
		
		HttpSession s = req.getSession();
		
		Cart c = (Cart) s.getAttribute("cart");
		
		if(c==null && Usname!=null) {
			c = new Cart();
			c.addItem(p);
			s.setAttribute("cart", c);
			resp.setContentType("text/html");
			PrintWriter pw=resp.getWriter();
			pw.println("<script type=\"text/javascript\">");
			pw.println("loaction.reload()");
			pw.println("</script>");
			RequestDispatcher rd=req.getRequestDispatcher("NewFile.jsp");
			rd.include(req, resp);

		}
		
		else {
			c.addItem(p);
			resp.sendRedirect("NewFile.jsp");
			resp.setContentType("text/html");
			PrintWriter pw=resp.getWriter();
			pw.println("<script type=\"text/javascript\">");
			pw.println("loaction.reload()");
			pw.println("</script>");
			RequestDispatcher rd=req.getRequestDispatcher("NewFile.jsp");
			rd.include(req, resp);
		}
	}

}
