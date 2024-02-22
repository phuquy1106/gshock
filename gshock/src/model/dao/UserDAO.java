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
import model.bean.User;

public class UserDAO {
	private Connection conn;
	private PreparedStatement pst ;
	private Statement st;
	private ResultSet rs;
	
	public ArrayList<User> getItems() {
		ArrayList<User> listU = new ArrayList<>();
		conn = DBConnectionUtil.getConnection();
		String query = "SELECT * FROM users ORDER BY id DESC";
		try {
			st = conn.createStatement();
			rs = st.executeQuery(query);
			while(rs.next()){
				int id = rs.getInt("id");
				String username = rs.getString("username");
				String password = rs.getString("password");
				String fullname = rs.getString("fullname");
				String roles = rs.getString("roles");
				User item = new User(id, username, password, fullname, roles);
				listU.add(item);
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
		return listU;
	}

	public int addItem(User item) {
		int result = 0;
		conn = DBConnectionUtil.getConnection();
		String query = "INSERT INTO users(username,password,fullname,roles) VALUES (?,?,?,?)";
		try {
			pst = conn.prepareStatement(query);
			pst.setString(1, item.getUsername());
			pst.setString(2, item.getPassword());
			pst.setString(3, item.getFullname());
			pst.setString(4, item.getRoles());
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

	public User getItem(int id) {
		User itemU = null;
		conn = DBConnectionUtil.getConnection();
		String query = "SELECT * FROM users WHERE id = ?";
		try {
			pst = conn.prepareStatement(query);
			pst.setInt(1, id);
			rs = pst.executeQuery();
			if(rs.next()){
				String username = rs.getString("username");
				String password = rs.getString("password");
				String fullname = rs.getString("fullname");
				String roles = rs.getString("roles");
				itemU = new User(id, username, password, fullname, roles);
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
		return itemU;
	}

	public int editItem(User item) {
		int result = 0;
		
		conn = DBConnectionUtil.getConnection();
		
		String query = "UPDATE users SET password = ?, fullname = ?, roles = ? WHERE id = ?";
		
		try {
			pst = conn.prepareStatement(query);
			pst.setString(1, item.getPassword());
			pst.setString(2, item.getFullname());
			pst.setString(3, item.getRoles());
			pst.setInt(4, item.getId());
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
		
		String query = "DELETE FROM users WHERE id = ?";
		
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

	public User existUser(String username, String password) {
		User user = null;
		conn = DBConnectionUtil.getConnection();
		String query = "SELECT * FROM users WHERE username = ? AND password = ?";
		try {
			pst = conn.prepareStatement(query);
			pst.setString(1, username);
			pst.setString(2, password);
			rs = pst.executeQuery();
			if(rs.next()){
				int id = rs.getInt("id");
				String fullname = rs.getString("fullname");
				String roles = rs.getString("roles");
				user = new User(id, username, password, fullname, roles);
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
		return user;
	}
	
}
