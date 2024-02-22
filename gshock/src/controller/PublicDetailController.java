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
import model.bean.Comment;
import model.bean.Province;
import model.dao.ClockDAO;
import model.dao.CommentDAO;
import model.dao.ProvinceDAO;


public class PublicDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private ClockDAO clockDAO;   
    private CommentDAO commentDAO;
    
    
    public PublicDetailController() {
        super();
        clockDAO = new ClockDAO();
        commentDAO = new CommentDAO();
        
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = 0;
		try {
			id = Integer.parseInt(request.getParameter("id"));
		} catch (NumberFormatException e) {
			response.sendRedirect(request.getContextPath());
			return;
		}
		Clock itemClock = clockDAO.getItem(id);
		int cid = itemClock.getCategories().getId();
		ArrayList<Clock> listClockP = clockDAO.getItems(cid);
		ArrayList<Comment> listCmt = commentDAO.getItems(id);
		
		request.setAttribute("listCmt", listCmt);
		request.setAttribute("listClockP", listClockP);
		request.setAttribute("itemClock", itemClock);
		RequestDispatcher rd = request.getRequestDispatcher("/public/detail.jsp");
		rd.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		int rating = Integer.parseInt(request.getParameter("arating"));
		String commnent = request.getParameter("acomment");
		String author = request.getParameter("aauthor");
		String email = request.getParameter("aemail");
		int id = Integer.parseInt(request.getParameter("aid"));
		Clock clock = new Clock(id, null, null, null, null, 0, 0, 0, null);
		Comment item = new Comment(id, author, email, rating, commnent, clock);
		if(commentDAO.addItem(item) > 0){
		}
		ArrayList<Comment> listCmt = commentDAO.getItems(id);
		if(listCmt != null && listCmt.size() > 0){
			for(Comment itemCMT: listCmt){
				response.getWriter().print(
						"<h4 style=\"margin-bottom: 10px \">"+"<i class=\"la la-github-alt\">"+"</i>" + itemCMT.getName() + "</h4>" +
                		"<p style=\"margin: 0px 0px 5px 37px\">" );
				for(int i = 1; i <= itemCMT.getStar(); i ++){
					response.getWriter().print(
					"<i class=\"la la-star\">"+"</i>" );
				}
                response.getWriter().print(
                		"</p>" +
                		"<p style=\"margin-left: 37px\">" + itemCMT.getContent() + "</p>" +
                		"<p>" + "--------------------------------------------------------------------" + "</p>"
						);
				}
			}
		
	}

}
