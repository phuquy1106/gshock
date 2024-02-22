package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.District;
import model.dao.DistrictDAO;


public class PublicHuyenController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private DistrictDAO districtDAO;   

    public PublicHuyenController() {
        super();
        districtDAO = new DistrictDAO();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String name = request.getParameter("aname");
		response.getWriter().print("<option value=\"\"  selected=\'selected\'>" + "Chọn quận huyện" + "</option>");
		ArrayList<District> listHuyen = districtDAO.getItems(name);
		if(listHuyen != null && listHuyen.size() > 0){
			for(District itemHuyen: listHuyen){
				response.getWriter().print("<option value=\"" + itemHuyen.getName() + "\" >" + itemHuyen.getName() + "</option>");
			}
		}
		
	}

}
