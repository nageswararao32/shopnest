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

@WebServlet("/addServlet")
public class Addservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Addservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int productId = Integer.parseInt(req.getParameter("productId"));
		
		Product p = FetchingUserInfo.getProductById(productId);
		
		HttpSession session = req.getSession(false);
		
		String Usname = (String) session.getAttribute("uname");
		
		HttpSession s = req.getSession();
		
		Cart c = (Cart) s.getAttribute("cart");
		
		PrintWriter pw = resp.getWriter();
		
		if(c==null && Usname!=null) {
			c = new Cart();
			c.addItem(p);
			s.setAttribute("cart", c);
			resp.setContentType("text/html");
			pw.println("<script type=\"text/javascript\">");
			pw.println("loaction.reload()");
			pw.println("</script>");
			RequestDispatcher rd=req.getRequestDispatcher("NewFile.jsp");
			rd.include(req, resp);

		}else if(Usname==null && c == null) {
			pw.println("Please Register (or) Login  to add a product into Cart");
		}
		
		else {
			c.addItem(p);
			resp.sendRedirect("NewFile.jsp");
			resp.setContentType("text/html");
//			PrintWriter pw=resp.getWriter();
			pw.println("<script type=\"text/javascript\">");
			pw.println("loaction.reload()");
			pw.println("</script>");
			RequestDispatcher rd=req.getRequestDispatcher("NewFile.jsp");
			rd.include(req, resp);
		}
	}
	}


