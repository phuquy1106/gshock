package controller;

import java.io.File;
import java.io.IOException;
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
import model.bean.News;
import model.bean.User;
import model.dao.NewsDAO;

@MultipartConfig
public class AdminEditNewsController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private NewsDAO newsDAO;   

    public AdminEditNewsController() {
        super();
        newsDAO = new NewsDAO();
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
			response.sendRedirect(request.getContextPath() + "/admin/newss?err=1");
			return;
		}
		News itemN = newsDAO.getItem(id); 
		request.setAttribute("itemN", itemN);
		RequestDispatcher rd = request.getRequestDispatcher("/admin/news/edit.jsp");
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
		// get data
		int id = 0;
		try {
			id = Integer.parseInt(request.getParameter("id"));
		} catch (NumberFormatException e) {
			response.sendRedirect(request.getContextPath() + "/admin/newss?err=1");
			return;
		}
		
		String name = request.getParameter("name");
		String preview = request.getParameter("preview");
		String content = request.getParameter("content");
		
		Part filePart = request.getPart("picture");
		//get dữ liệu cũ
		News news = newsDAO.getItem(id); 
		
		if(news == null){
			response.sendRedirect(request.getContextPath() + "/admin/newss?err=1");
			return;
		}
		
		
		// tạo thư mục lưu ảnh
		final String dirPathName = request.getServletContext().getRealPath("/files");
		File dirFile = new File(dirPathName);
		if(!dirFile.exists()){
			dirFile.mkdirs();
		}
		
		// lấy tên file từ part
		String fileName = FileUtil.getName(filePart);
		// đổi tên file
		String picture = "";
		if(fileName.isEmpty()){
			picture = news.getPicture();
		} else{
			picture = FileUtil.rename(fileName);
		}
		// đường dẫn file
		String filePathName = dirPathName + File.separator + picture;
		
		News item = new News(id, name, preview, content, null, picture);
		
		if(newsDAO.editItem(item) > 0){
			// thành công
			
			if(!fileName.isEmpty()){
				//xóa file cũ
				String oldFilePathName = dirPathName + File.separator + news.getPicture();
				File oldFile = new File(oldFilePathName);
				if(oldFile.exists()){
					oldFile.delete();
				}
				
				//ghi file
				filePart.write(filePathName);
			}
			
			response.sendRedirect(request.getContextPath() + "/admin/newss?msg=2");
			return;
		}else{
			// thất bại
			
			RequestDispatcher rd = request.getRequestDispatcher("/admin/news/edit.jsp?err=1");
			rd.forward(request, response);
			return;
		}
	}

}
