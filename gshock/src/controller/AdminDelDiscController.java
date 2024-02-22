package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.bean.User;
import model.dao.CommentDAO;
import model.dao.DiscountDAO;
import model.dao.UserDAO;


public class AdminDelDiscController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private DiscountDAO discountDAO;

    public AdminDelDiscController() {
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
		int id = 0;
		try {
			id = Integer.parseInt(request.getParameter("id"));
		} catch (NumberFormatException e) {
			response.sendRedirect(request.getContextPath() + "/admin/discs?err=1");
			return;
		}
		if(discountDAO.delItem(id) > 0){
			response.sendRedirect(request.getContextPath() + "/admin/discs?msg=3");
			return;
		}else{
			response.sendRedirect(request.getContextPath() + "/admin/discs?err=2");
			return;
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
