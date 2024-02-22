package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.bean.Categories;
import model.bean.User;
import model.dao.CategoriesDAO;


public class AdminEditCatController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private CategoriesDAO categoriesDAO;   

    public AdminEditCatController() {
        super();
        categoriesDAO = new CategoriesDAO();
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
			response.sendRedirect(request.getContextPath() + "/admin/cats?err=1");
			return;
		}
		Categories itemCat = categoriesDAO.getItem(id);
		request.setAttribute("itemCat", itemCat);
		RequestDispatcher rd = request.getRequestDispatcher("/admin/cat/edit.jsp");
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
		int id = 0;
		try {
			id = Integer.parseInt(request.getParameter("id"));
		} catch (NumberFormatException e) {
			response.sendRedirect(request.getContextPath() + "/admin/cats?err=1");
			return;
		}
		String name = request.getParameter("name");
		Categories itemCa = categoriesDAO.getItem(id);
		if(name.equals(itemCa.getName())){
			response.sendRedirect(request.getContextPath() + "/admin/cats?msg=2");
			return;
		}else{
			if(categoriesDAO.checkItem(name) > 0){
				RequestDispatcher rd = request.getRequestDispatcher("/admin/cat/edit.jsp?err=2");
				rd.forward(request, response);
				return;
			}else{
				Categories itemCat = new Categories(id, name);
				if(categoriesDAO.editItem(itemCat) > 0){
					response.sendRedirect(request.getContextPath() + "/admin/cats?msg=2");
					return;
				}else{
					RequestDispatcher rd = request.getRequestDispatcher("/admin/cat/edit.jsp?err=1");
					rd.forward(request, response);
				}
			}
		}
		
		
	}

}
