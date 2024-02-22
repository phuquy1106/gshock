package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.District;
import model.bean.Ward;
import model.dao.WardDAO;


public class PublicXaController extends HttpServlet {
	private static final long serialVersionUID = 1L;   
	private WardDAO wardDAO;
	
    public PublicXaController() {
        super();
        wardDAO = new WardDAO();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String dname = request.getParameter("aname");
		response.getWriter().print("<option value=\"\"  selected=\'selected\'>" + "Chọn xã/phường" + "</option>");
		ArrayList<Ward> listXa = wardDAO.getItems(dname);
		if(listXa != null && listXa.size() > 0){
			for(Ward itemXa: listXa){
				response.getWriter().print("<option value=\"" + itemXa.getName() + "\" >" + itemXa.getName() + "</option>");
			}
		}
	}

}
