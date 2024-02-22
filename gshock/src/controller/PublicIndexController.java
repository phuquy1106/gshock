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
import model.bean.News;
import model.dao.ClockDAO;
import model.dao.NewsDAO;


public class PublicIndexController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private ClockDAO clockDAO;   
    private NewsDAO newsDAO;
    
    public PublicIndexController() {
        super();
        clockDAO = new ClockDAO();
        newsDAO = new NewsDAO();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Clock> listDMBC = clockDAO.getItemsDMBC();
		ArrayList<Clock> listBCA = new ArrayList<>();
		ArrayList<Clock> listBCB = new ArrayList<>();
		ArrayList<Clock> listBCC = new ArrayList<>();
		int a = 0;
		for(Clock itemDMBC: listDMBC){
			a ++;
			if(a == 1){
				listBCA = clockDAO.getItemsBC(itemDMBC.getCategories().getId());
			}else if(a == 2){
				listBCB = clockDAO.getItemsBC(itemDMBC.getCategories().getId());
			}else{
				listBCC = clockDAO.getItemsBC(itemDMBC.getCategories().getId());
			}
		}
		ArrayList<Clock> listFS = clockDAO.getItemsFS();
		String sp = "G-Shock";
		ArrayList<Clock> listSPG = clockDAO.getItems(sp);
		sp = "Baby-G";
		ArrayList<Clock> listSPB = clockDAO.getItems(sp);
		ArrayList<Clock> listMV = clockDAO.getItems();
		ArrayList<News> listN = newsDAO.getItems();
		request.setAttribute("listN", listN);
		request.setAttribute("listFS", listFS);
		request.setAttribute("listMV", listMV);
		request.setAttribute("listSPB", listSPB);
		request.setAttribute("listSPG", listSPG);
		request.setAttribute("listDMBC", listDMBC);
		request.setAttribute("listBCA", listBCA);
		request.setAttribute("listBCB", listBCB);
		request.setAttribute("listBCC", listBCC);
		RequestDispatcher rd = request.getRequestDispatcher("/public/index.jsp");
		rd.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
