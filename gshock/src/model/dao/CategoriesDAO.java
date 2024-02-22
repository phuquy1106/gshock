package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import util.DBConnectionUtil;
import model.bean.Categories;

public class CategoriesDAO {
	private Connection conn;
	private ResultSet rs;
	private Statement st;
	private PreparedStatement pst;
	
	public ArrayList<Categories> getItems() {
		ArrayList<Categories> listCat = new ArrayList<>();
		conn = DBConnectionUtil.getConnection();
		String query = "SELECT * FROM categories ORDER BY id DESC";
		try {
			st = conn.createStatement();
			rs = st.executeQuery(query);
			while(rs.next()){
				int id = rs.getInt("id");
				String name = rs.getString("name");
				Categories items = new Categories(id, name);
				listCat.add(items);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			if(rs != null && st != null && conn!= null){
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
		return listCat;
	}

	public int addItem(Categories item) {
		int result = 0;
		conn = DBConnectionUtil.getConnection();
		String query = "INSERT INTO categories(name) VALUES (?)";
		try {
			pst = conn.prepareStatement(query);
			pst.setString(1, item.getName());
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

	public int checkItem(String name) {
		int result = 0;
		conn = DBConnectionUtil.getConnection();
		String query = "SELECT * FROM categories WHERE name = ?";
		try {
			pst = conn.prepareStatement(query);
			pst.setString(1, name);
			rs = pst.executeQuery();
			if(rs.next()){
				result = 1;
			}
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

	public Categories getItem(int id) {
		Categories itemCat = null;
		conn = DBConnectionUtil.getConnection();
		String query = "SELECT * FROM categories WHERE id = ?";
		try {
			pst = conn.prepareStatement(query);
			pst.setInt(1, id);
			rs = pst.executeQuery();
			if(rs.next()){
				String name = rs.getString("name");
				itemCat = new Categories(id, name);
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
		return itemCat;
	}

	public int editItem(Categories itemCat) {
		int result = 0;
		conn = DBConnectionUtil.getConnection();
		String query = "UPDATE categories SET name = ? WHERE id = ?";
		try {
			pst = conn.prepareStatement(query);
			pst.setString(1, itemCat.getName());
			pst.setInt(2, itemCat.getId());
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

	public int delItem(int id) {
		int result = 0;
		conn = DBConnectionUtil.getConnection();
		String query = "DELETE FROM categories WHERE id = ?";
		try {
			pst = conn.prepareStatement(query);
			pst.setInt(1, id);
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

	public ArrayList<Categories> getItemsT(int cid) {
		ArrayList<Categories> listCat = new ArrayList<>();
		conn = DBConnectionUtil.getConnection();
		String query = "SELECT * FROM categories WHERE NOT id = ? ORDER BY id DESC;";
		try {
			pst = conn.prepareStatement(query);
			pst.setInt(1, cid);
			rs = pst.executeQuery();
			while(rs.next()){
				int id = rs.getInt("id");
				String name = rs.getString("name");
				Categories items = new Categories(id, name);
				listCat.add(items);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			if(rs != null && pst != null && conn!= null){
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
		return listCat;
	}
	
	
}
