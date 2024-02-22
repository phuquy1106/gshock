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

import model.bean.Clock;
import model.bean.Province;
import model.bean.Torder_detail;
import model.bean.Torders;
import model.dao.ProvinceDAO;
import model.dao.Torder_detailDAO;
import model.dao.TordersDAO;


public class PublicTordersController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private Torder_detailDAO torder_detailDAO;   
    private TordersDAO tordersDAO;
    private ProvinceDAO provinceDAO;
    
    public PublicTordersController() {
        super();
        torder_detailDAO = new Torder_detailDAO();
        tordersDAO = new TordersDAO();
        provinceDAO = new ProvinceDAO();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Province> listTinh = provinceDAO.getItems();
		request.setAttribute("listTinh", listTinh);
		RequestDispatcher rd = request.getRequestDispatcher("/public/torders.jsp");
		rd.forward(request, response);
			
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String firstname = request.getParameter("billing_first_name");
		String lastname = request.getParameter("billing_last_name");
		String fullname = firstname + " " + lastname;
		int phone = Integer.parseInt(request.getParameter("billing_phone"));
		String email = request.getParameter("billing_email");
		String tinh = request.getParameter("billing_state");
		String huyen = request.getParameter("billing_city");
		String xa = request.getParameter("billing_address_2");
		String thon = request.getParameter("billing_address_1");
		String address = thon + "/" + xa + "/" + huyen + "/" + tinh;
		String content = request.getParameter("order_comments");
		String payment = request.getParameter("payment_method");
		Torders item = new Torders(0, fullname, address, payment, 0, 0, phone, email, content);
		Torders torders = tordersDAO.getItemST1();
		tordersDAO.editST(item);
		HttpSession session = request.getSession();
		ArrayList<Torder_detail> torderds = (ArrayList<Torder_detail>) session.getAttribute("torderd");
		for (int i = 0; i < torderds.size(); i++) {
			torder_detailDAO.addItem(torderds.get(i));
		}
		session.invalidate();
		response.sendRedirect(request.getContextPath() + "/successful?idt=" + torders.getId());
	}

}
