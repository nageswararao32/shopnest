package com.ShopNest.OrderNow;

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
 * Servlet implementation class BuyNow
 */
@WebServlet("/now")
public class BuyNow extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		
		
		int productId = Integer.parseInt(req.getParameter("productId"));
		
		BuyCart b = FetchingUserInfo.getBuyNowById(productId);
		
		HttpSession s = req.getSession();
		
		ByCart by = (ByCart)s.getAttribute("bart");
		
		if(by==null) {
			by = new ByCart();
			by.addItem(b);
			s.setAttribute("bart", b);
			resp.setContentType("text/html");
			PrintWriter pw=resp.getWriter();
			pw.println("<script type=\"text/javascript\">");
			pw.println("loaction.reload()");
			pw.println("</script>");
			RequestDispatcher rd=req.getRequestDispatcher("BuyNow.jsp");
			rd.include(req, resp);

		}
		
		else {
			by.addItem(b);
			resp.sendRedirect("BuyNow.jsp");
			resp.setContentType("text/html");
			PrintWriter pw=resp.getWriter();
			pw.println("<script type=\"text/javascript\">");
			pw.println("loaction.reload()");
			pw.println("</script>");
			RequestDispatcher rd=req.getRequestDispatcher("BuyNow.jsp");
			rd.include(req, resp);
		}
		
		
	}

}
