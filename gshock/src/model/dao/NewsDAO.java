package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;

import util.DBConnectionUtil;
import model.bean.News;

public class NewsDAO {
	private Connection conn;
	private PreparedStatement pst;
	private Statement st;
	private ResultSet rs;
	
	public ArrayList<News> getItems() {
		ArrayList<News> listN = new ArrayList<>();
		conn = DBConnectionUtil.getConnection();
		String query = "SELECT * FROM news ORDER BY id DESC";
		try {
			st = conn.createStatement();
			rs = st.executeQuery(query);
			while(rs.next()){
				int id = rs.getInt("id");
				String name = rs.getString("name");
				String preview = rs.getString("preview_text");
				String content = rs.getString("content");
				Timestamp date = rs.getTimestamp("date");
				String picture = rs.getString("picture");
				News item = new News(id, name, preview, content, date, picture);
				listN.add(item);
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
		return listN;
	}

	public int addItem(News item) {
		int result = 0;
		conn = DBConnectionUtil.getConnection();
		String query = "INSERT INTO news(name,preview_text,content,picture) VALUES (?,?,?,?)";
		try {
			pst = conn.prepareStatement(query);
			pst.setString(1, item.getName());
			pst.setString(2, item.getPreview());
			pst.setString(3, item.getContent());
			pst.setString(4, item.getPicture());
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

	public News getItem(int id) {
		News itemN = null;
		conn = DBConnectionUtil.getConnection();
		String query = "SELECT * FROM news WHERE id = ?";
		try {
			pst = conn.prepareStatement(query);
			pst.setInt(1, id);
			rs = pst.executeQuery();
			if(rs.next()){
				String name = rs.getString("name");
				String preview = rs.getString("preview_text");
				String content = rs.getString("content");
				String picture = rs.getString("picture");
				itemN = new News(id, name, preview, content, null, picture);
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
		return itemN;
	}

	public int editItem(News item) {
		int result = 0;
		
		conn = DBConnectionUtil.getConnection();
		
		String query = "UPDATE news SET name = ?, preview_text = ?, content = ?,picture = ? WHERE id = ?";
		
		try {
			pst = conn.prepareStatement(query);
			pst.setString(1, item.getName());
			pst.setString(2, item.getPreview());
			pst.setString(3, item.getContent());
			pst.setString(4, item.getPicture());
			pst.setInt(5, item.getId());
			result = pst.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			if(pst != null && conn != null){
				try {
					pst.close();
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return result;
	}

	public int delItem(int id) {
		int result = 0;
		
		conn = DBConnectionUtil.getConnection();
		
		String query = "DELETE FROM news WHERE id = ?";
		
		try {
			pst = conn.prepareStatement(query);
			pst.setInt(1, id);
			result = pst.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			if(pst != null && conn != null){
				try {
					pst.close();
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return result;
	}
	
}
