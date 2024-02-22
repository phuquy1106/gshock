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

import model.bean.Torder_detail;
import model.bean.Torders;
import model.bean.User;
import model.dao.Torder_detailDAO;
import model.dao.TordersDAO;


public class PublicPrintDeliverysController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private TordersDAO tordersDAO;
    private Torder_detailDAO torder_detailDAO;

    public PublicPrintDeliverysController() {
        super();
        tordersDAO = new TordersDAO();
        torder_detailDAO = new Torder_detailDAO();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		User userLogin = (User) session.getAttribute("userLogin");
		if(userLogin == null ){
			response.sendRedirect(request.getContextPath() + "/admin/login");
			return;
		}
		ArrayList<Torders> listĐH = tordersDAO.getItems();
		ArrayList<Torder_detail> listCTĐH = torder_detailDAO.getItems();
		request.setAttribute("listCTĐH", listCTĐH);
		request.setAttribute("listĐH", listĐH);
		RequestDispatcher rd = request.getRequestDispatcher("/admin/deliverys/print.jsp");
		rd.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
