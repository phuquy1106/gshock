package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.bean.Clock;
import model.bean.Torder_detail;
import model.bean.Torders;
import model.dao.ClockDAO;
import model.dao.Torder_detailDAO;
import model.dao.TordersDAO;


public class PublicTorderDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private TordersDAO tordersDAO;   
    private ClockDAO clockDAO;
    private Torder_detailDAO torder_detailDAO;
    private ArrayList<Torder_detail> torderd;
    
    public PublicTorderDetailController() {
        super();
        tordersDAO = new TordersDAO();
        torder_detailDAO = new Torder_detailDAO();
		torderd = new ArrayList<>();
		clockDAO = new ClockDAO();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		int quantity = 0;
		try {
			quantity = Integer.parseInt(request.getParameter("aquantity"));
		} catch (NumberFormatException e) {
			quantity = 1;
		}
		int id = Integer.parseInt(request.getParameter("aid"));
		Torders torders = tordersDAO.getItemST1();
		if(torders == null){
			tordersDAO.addItem();
			torders = tordersDAO.getItemST1();
		}
		Clock clock = clockDAO.getItem(id);
		Torder_detail itemadd = new Torder_detail(0, clock, torders, quantity);
		ArrayList<Torder_detail> torderds = (ArrayList<Torder_detail>) session.getAttribute("torderd");
		int idclock = 0;
		if(torderds != null && torderds.size() > 0){
			for (int i = 0; i < torderd.size(); i++) {
				if(itemadd.getClock().getId() == torderds.get(i).getClock().getId()){
					idclock = torderds.get(i).getClock().getId();
					itemadd.setNumber(torderds.get(i).getNumber() + quantity);
					torderd.set(i,itemadd);
				}
			}
			if(idclock != clock.getId()){
				torderd.add(itemadd);
			}
			session.setAttribute("torderd", torderd);
		}else{
			torderd.add(itemadd);
			session.setAttribute("torderd", torderd);
		}

		torderds = (ArrayList<Torder_detail>) session.getAttribute("torderd");
		int numb = 0;
		for (int i = 0; i < torderds.size(); i++) {
			numb += torderds.get(i).getNumber();
		}
		session.setAttribute("numb", numb);
		response.getWriter().print(numb);	
		
	}

}
