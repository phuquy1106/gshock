package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import util.DBConnectionUtil;
import model.bean.Clock;
import model.bean.Comment;

public class CommentDAO {
	private Connection conn;
	private PreparedStatement pst;
	private Statement st;
	private ResultSet rs;
	
	public ArrayList<Comment> getItems() {
		ArrayList<Comment> listCmt = new ArrayList<>();
		conn = DBConnectionUtil.getConnection();
		String query = "SELECT cmt.id AS cmtid , cmt.name AS cmtname , id_clock, email , star, content, c.name AS cname "
				+ "FROM comment AS cmt "
				+ "INNER JOIN clock AS c "
				+ "ON cmt.id_clock = c.id "
				+ "ORDER BY cmt.id DESC";
		try {
			st = conn.createStatement();
			rs = st.executeQuery(query);
			while(rs.next()){
				int id = rs.getInt("cmtid");
				String cmtname = rs.getString("cmtname");
				int id_clock = rs.getInt("id_clock");
				String email = rs.getString("email");
				int star = rs.getInt("star");
				String content = rs.getString("content");
				Clock clock = new Clock(id_clock, rs.getString("cname"), null, null, null, 0, 0, 0, null);
				Comment item = new Comment(id, cmtname, email, star, content, clock);
				listCmt.add(item);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			if(rs != null && st != null && conn != null){
				try {
					rs.close();
					st.close();
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		return listCmt;
	}

	public int delItem(int id) {
		int result = 0;
		conn = DBConnectionUtil.getConnection();
		String query = "DELETE FROM comment WHERE id = ?";
		try {
			pst = conn.prepareStatement(query);
			pst.setInt(1,id);
			result = pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			if(pst != null && conn != null){
				try {
					pst.close();
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		return result;
	}

	public ArrayList<Comment> getItems(int idc) {
		ArrayList<Comment> listCmt = new ArrayList<>();
		conn = DBConnectionUtil.getConnection();
		String query = "SELECT cmt.id AS cmtid , cmt.name AS cmtname , id_clock, email , star, content, c.name AS cname "
				+ "FROM comment AS cmt "
				+ "INNER JOIN clock AS c "
				+ "ON cmt.id_clock = c.id "
				+ "WHERE id_clock = ? "
				+ "ORDER BY cmt.id DESC";
		try {
			pst = conn.prepareStatement(query);
			pst.setInt(1, idc);
			rs = pst.executeQuery();
			while(rs.next()){
				int id = rs.getInt("cmtid");
				String cmtname = rs.getString("cmtname");
				int id_clock = rs.getInt("id_clock");
				String email = rs.getString("email");
				int star = rs.getInt("star");
				String content = rs.getString("content");
				Clock clock = new Clock(id_clock, rs.getString("cname"), null, null, null, 0, 0, 0, null);
				Comment item = new Comment(id, cmtname, email, star, content, clock);
				listCmt.add(item);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			if(rs != null && pst != null && conn != null){
				try {
					rs.close();
					pst.close();
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		return listCmt;
	}

	public int addItem(Comment item) {
		int result = 0;
		conn = DBConnectionUtil.getConnection();
		String query = "INSERT INTO comment(id_clock,name,email,star,content) VALUES (?,?,?,?,?)";
		try {
			pst = conn.prepareStatement(query);
			pst.setInt(1,item.getClock().getId());
			pst.setString(2, item.getName());
			pst.setString(3, item.getEmail());
			pst.setInt(4, item.getStar());
			pst.setString(5, item.getContent());
			result = pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			if(pst != null && conn != null){
				try {
					pst.close();
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		return result;
	}
	
}
