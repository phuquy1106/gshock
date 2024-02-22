package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.Categories;
import model.bean.Clock;
import model.dao.CategoriesDAO;
import model.dao.ClockDAO;


public class PublicCatController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private ClockDAO clockDAO;  
    private CategoriesDAO categoriesDAO;

    public PublicCatController() {
        super();
        clockDAO = new ClockDAO();
        categoriesDAO = new CategoriesDAO();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = 0;
		try {
			id = Integer.parseInt(request.getParameter("id"));
		} catch (NumberFormatException e) {
			response.sendRedirect(request.getContextPath());
			return;
		}
		Categories item = categoriesDAO.getItem(id);
		ArrayList<Categories> listCP = categoriesDAO.getItemsT(id);
		ArrayList<Clock> listCt = clockDAO.getItems(id);
		request.setAttribute("item", item);
		request.setAttribute("listCP", listCP);
		request.setAttribute("listCT", listCt);
		RequestDispatcher rd = request.getRequestDispatcher("/public/cat.jsp");
		rd.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
