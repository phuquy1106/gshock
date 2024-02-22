package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.Torder_detail;
import model.dao.Torder_detailDAO;


public class PublicSuccessfulController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private Torder_detailDAO torder_detailDAO;  

    public PublicSuccessfulController() {
        super();
        torder_detailDAO = new Torder_detailDAO();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int idt = 0;
		try {
			idt = Integer.parseInt(request.getParameter("idt"));
		} catch (NumberFormatException e) {
			response.sendRedirect(request.getContextPath() + "/torders");
			return;
		}
		ArrayList<Torder_detail> listTorder = new ArrayList<>();
		listTorder = torder_detailDAO.getItems(idt);
		request.setAttribute("listTorder", listTorder);
		RequestDispatcher rd = request.getRequestDispatcher("/public/successful.jsp");
		rd.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
