package com.ShopNest.Carts;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.ShopNest.DbHandler.DbConnection;
import com.ShopNest.DbHandler.FetchingUserInfo;


 

@WebServlet("/add")
public class AddToCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int productId = Integer.parseInt(req.getParameter("productId"));
		
		Product p = FetchingUserInfo.getProductById(productId);
		
		HttpSession s = req.getSession();
		
		Cart c = (Cart) s.getAttribute("cart");
		
		if(c==null) {
			
			c = new Cart();
			c.addItem(p);
			s.setAttribute("cart", c);
		}
	
		else {
			
			c.addItem(p);
			resp.sendRedirect("AddCart.jsp");
		}
}

	
}	
