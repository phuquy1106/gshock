package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.bean.Discount;
import model.bean.User;
import model.dao.DiscountDAO;


public class AdminAddDiscController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DiscountDAO discountDAO;
	
    public AdminAddDiscController() {
        super();
        discountDAO = new DiscountDAO();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		User userLogin = (User) session.getAttribute("userLogin");
		if(userLogin == null ){
			response.sendRedirect(request.getContextPath() + "/admin/login");
			return;
		}
		RequestDispatcher rd = request.getRequestDispatcher("/admin/discount/add.jsp");
		rd.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		User userLogin = (User) session.getAttribute("userLogin");
		if(userLogin == null ){
			response.sendRedirect(request.getContextPath() + "/admin/login");
			return;
		}
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		int number = Integer.parseInt(request.getParameter("discount"));
		ArrayList<Discount> listTest = discountDAO.getItems();
		for(Discount item : listTest){
			if(name.equals(item.getName())){
				RequestDispatcher rd = request.getRequestDispatcher("/admin/discount/add.jsp?err=2");
				rd.forward(request, response);
				return;
			}
		}
		Discount item = new Discount(0, name, number);
		if(discountDAO.addItem(item) > 0){
			response.sendRedirect(request.getContextPath() + "/admin/discs?msg=1");
			return;
		}else{
			RequestDispatcher rd = request.getRequestDispatcher("/admin/discount/add.jsp?err=1");
			rd.forward(request, response);
			return;
		}
	}

}
