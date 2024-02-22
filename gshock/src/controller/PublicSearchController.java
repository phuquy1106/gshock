package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.Clock;
import model.dao.ClockDAO;


public class PublicSearchController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private ClockDAO clockDAO;  

    public PublicSearchController() {
        super();
        clockDAO = new ClockDAO();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String s = request.getParameter("s");
		ArrayList<Clock> listTK = clockDAO.getTimKiem(s);
		request.setAttribute("s", s);
		request.setAttribute("listTK", listTK);
		RequestDispatcher rd = request.getRequestDispatcher("/public/search.jsp");
		rd.forward(request, response);
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String s = request.getParameter("s");
		ArrayList<Clock> listTK = clockDAO.getTimKiem(s);
		request.setAttribute("s", s);
		request.setAttribute("listTK", listTK);
		RequestDispatcher rd = request.getRequestDispatcher("/public/search.jsp");
		rd.forward(request, response);
	}

}
