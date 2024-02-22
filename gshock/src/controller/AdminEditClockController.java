package controller;

import java.io.File;
import java.io.IOException;
import java.sql.Array;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import util.FileUtil;
import model.bean.Categories;
import model.bean.Clock;
import model.bean.User;
import model.dao.CategoriesDAO;
import model.dao.ClockDAO;

@MultipartConfig
public class AdminEditClockController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private CategoriesDAO categoriesDAO;   
    private ClockDAO clockDAO;

    public AdminEditClockController() {
        super();
        categoriesDAO = new CategoriesDAO();
        clockDAO = new ClockDAO();
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
			response.sendRedirect(request.getContextPath() + "/admin/clocks?err=1");
			return;
		}
		Clock itemClock = clockDAO.getItem(id);
		ArrayList<Categories> listCat = categoriesDAO.getItems();
		request.setAttribute("listCat", listCat);
		request.setAttribute("itemClock", itemClock);
		RequestDispatcher rd = request.getRequestDispatcher("/admin/clock/edit.jsp");
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
		int idcat = 0;
		try {
			id = Integer.parseInt(request.getParameter("id"));
			idcat = Integer.parseInt(request.getParameter("cat"));
		} catch (NumberFormatException e) {
			response.sendRedirect(request.getContextPath() + "/admin/clocks?err=1");
			return;
		}
		String name = request.getParameter("name");
		String preview = request.getParameter("preview");
		String detail = request.getParameter("detail");
		int price = Integer.parseInt(request.getParameter("price"));
		int number = Integer.parseInt(request.getParameter("number"));
		int discount = Integer.parseInt(request.getParameter("discount"));
		
		Part filePart = request.getPart("picture");
		
		Clock clock = clockDAO.getItem(id);
		
		if(clock == null){
			response.sendRedirect(request.getContextPath() + "/admin/clocks?err=1");
			return;
		}
		
		final String dirPartName = request.getServletContext().getRealPath("/files");
		File dirFile = new File(dirPartName);
		if(!dirFile.exists()){
			dirFile.mkdirs();
		}
		String fileName = FileUtil.getName(filePart);
		String picture = "";
		if(fileName.isEmpty()){
			picture = clock.getPicture();
		} else{
			picture = FileUtil.rename(fileName);
		}
		
		String filePathName = dirPartName + File.separator + picture;
		Categories categories = new Categories(idcat, null);
		Clock item = new Clock(id, name, preview, detail, picture, price, number, discount, categories);
		
		if(clockDAO.editItem(item) > 0){
			if(!fileName.isEmpty()){
				//xóa file cũ
				String oldFilePathName = dirPartName + File.separator + clock.getPicture();
				File oldFile = new File(oldFilePathName);
				if(oldFile.exists()){
					oldFile.delete();
				}
				
				//ghi file
				filePart.write(filePathName);
			}
			response.sendRedirect(request.getContextPath() + "/admin/clocks?msg=2");
			return;
		}else{
			ArrayList<Categories> listCat = categoriesDAO.getItems();
			request.setAttribute("listCat", listCat);
			RequestDispatcher rd = request.getRequestDispatcher("/admin/clock/edit.jsp?err=1");
			rd.forward(request, response);
		}
	}

}
