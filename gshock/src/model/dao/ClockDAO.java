package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import util.DBConnectionUtil;
import model.bean.Categories;
import model.bean.Clock;

public class ClockDAO {
	private Connection conn;
	private PreparedStatement pst;
	private Statement st;
	private ResultSet rs;
	
	public ArrayList<Clock> getItems() {
		ArrayList<Clock> listClock = new ArrayList<>();
		conn = DBConnectionUtil.getConnection();
		String query = "SELECT c.id AS cid , c.name AS cname , preview, detail, picture, price, number, discount , id_cat , cat.name AS catname "
				+ "FROM clock AS c "
				+ "INNER JOIN categories AS cat "
				+ "ON c.id_cat = cat.id "
				+ "ORDER BY c.id DESC ";
		try {
			st = conn.createStatement();
			rs = st.executeQuery(query);
			while(rs.next()){
				int cid = rs.getInt("cid");
				String cname = rs.getString("cname");
				String preview = rs.getString("preview");
				String detail = rs.getString("detail");
				String picture = rs.getString("picture");
				int price = rs.getInt("price");
				int number = rs.getInt("number");
				int discount = rs.getInt("discount");
				Categories categories = new Categories(rs.getInt("id_cat"), rs.getString("catname"));
				Clock itemClock = new Clock(cid, cname, preview, detail, picture, price, number, discount, categories);
				listClock.add(itemClock);
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
		return listClock;
	}

	public int addItem(Clock item) {
		int result = 0;
		conn = DBConnectionUtil.getConnection();
		String query = "INSERT INTO clock(name,id_cat,preview,detail,picture,price,number,discount) VALUES (?,?,?,?,?,?,?,?) ";
		try {
			pst = conn.prepareStatement(query);
			pst.setString(1, item.getName());
			pst.setInt(2, item.getCategories().getId());
			pst.setString(3, item.getPreview());
			pst.setString(4, item.getDetail());
			pst.setString(5, item.getPicture());
			pst.setInt(6, item.getPrice());
			pst.setInt(7, item.getNumber());
			pst.setInt(8, item.getDiscount());
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

	public Clock getItem(int id) {
		Clock itemC = null;
		conn = DBConnectionUtil.getConnection();
		String query = "SELECT c.id AS cid , c.name AS cname , preview, detail, picture, price, number, discount , id_cat , cat.name AS catname "
				+ "FROM clock AS c "
				+ "INNER JOIN categories AS cat "
				+ "ON c.id_cat = cat.id "
				+ "WHERE c.id = ? ";
		try {
			pst = conn.prepareStatement(query);
			pst.setInt(1, id);
			rs = pst.executeQuery();
			if(rs.next()){
				int cid = rs.getInt("cid");
				String cname = rs.getString("cname");
				String preview = rs.getString("preview");
				String detail = rs.getString("detail");
				String picture = rs.getString("picture");
				int price = rs.getInt("price");
				int number = rs.getInt("number");
				int discount = rs.getInt("discount");
				Categories categories = new Categories(rs.getInt("id_cat"), rs.getString("catname"));
				itemC = new Clock(cid, cname, preview, detail, picture, price, number, discount, categories);
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
		return itemC;
	}

	public int editItem(Clock item) {
		int result = 0;
		conn = DBConnectionUtil.getConnection();
		String query = "UPDATE clock SET name = ?, id_cat = ?, preview = ?, detail = ?, picture = ?, price = ?, number = ?, discount = ? WHERE id = ?";
		try {
			pst = conn.prepareStatement(query);
			pst.setString(1, item.getName());
			pst.setInt(2, item.getCategories().getId());
			pst.setString(3, item.getPreview());
			pst.setString(4, item.getDetail());
			pst.setString(5, item.getPicture());
			pst.setInt(6, item.getPrice());
			pst.setInt(7, item.getNumber());
			pst.setInt(8, item.getDiscount());
			pst.setInt(9, item.getId());
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
		String query = "DELETE FROM clock WHERE id = ?";
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

	public ArrayList<Clock> getItemsDMBC() {
		ArrayList<Clock> listClock = new ArrayList<>();
		conn = DBConnectionUtil.getConnection();
		String query = "SELECT id_cat , cat.name AS catname, sold "
				+ "FROM clock AS c "
				+ "INNER JOIN categories AS cat "
				+ "ON c.id_cat = cat.id "
				+ "GROUP BY id_cat "
				+ "ORDER BY sold DESC LIMIT 0 , 3;";
		try {
			st = conn.createStatement();
			rs = st.executeQuery(query);
			while(rs.next()){
				Categories categories = new Categories(rs.getInt("id_cat"), rs.getString("catname"));
				Clock itemClock = new Clock(0, null, null, null, null, 0, 0, 0, categories);
				listClock.add(itemClock);
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
		return listClock;
	}

	public ArrayList<Clock> getItemsBC(int id) {
		ArrayList<Clock> listClock = new ArrayList<>();
		conn = DBConnectionUtil.getConnection();
		String query = "SELECT c.id AS cid , c.name AS cname , preview, detail, picture, price, number, discount , id_cat , cat.name AS catname "
				+ "FROM clock AS c "
				+ "INNER JOIN categories AS cat "
				+ "ON c.id_cat = cat.id "
				+ "WHERE id_cat = ? "
				+ "ORDER BY sold DESC ";
		try {
			pst = conn.prepareStatement(query);
			pst.setInt(1, id);
			rs = pst.executeQuery();
			while(rs.next()){
				int cid = rs.getInt("cid");
				String cname = rs.getString("cname");
				String preview = rs.getString("preview");
				String detail = rs.getString("detail");
				String picture = rs.getString("picture");
				int price = rs.getInt("price");
				int number = rs.getInt("number");
				int discount = rs.getInt("discount");
				Categories categories = new Categories(rs.getInt("id_cat"), rs.getString("catname"));
				Clock itemClock = new Clock(cid, cname, preview, detail, picture, price, number, discount, categories);
				listClock.add(itemClock);
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
		return listClock;
	}

	public ArrayList<Clock> getItems(String sp) {
		ArrayList<Clock> listClock = new ArrayList<>();
		conn = DBConnectionUtil.getConnection();
		String query = "SELECT c.id AS cid , c.name AS cname , preview, detail, picture, price, number, discount , id_cat , cat.name AS catname "
				+ "FROM clock AS c "
				+ "INNER JOIN categories AS cat "
				+ "ON c.id_cat = cat.id "
				+ "WHERE cat.name = ? "
				+ "ORDER BY c.id DESC ";
		try {
			pst = conn.prepareStatement(query);
			pst.setString(1, sp);
			rs = pst.executeQuery();
			while(rs.next()){
				int cid = rs.getInt("cid");
				String cname = rs.getString("cname");
				String preview = rs.getString("preview");
				String detail = rs.getString("detail");
				String picture = rs.getString("picture");
				int price = rs.getInt("price");
				int number = rs.getInt("number");
				int discount = rs.getInt("discount");
				Categories categories = new Categories(rs.getInt("id_cat"), rs.getString("catname"));
				Clock itemClock = new Clock(cid, cname, preview, detail, picture, price, number, discount, categories);
				listClock.add(itemClock);
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
		return listClock;
	}

	public ArrayList<Clock> getItemsFS() {
		ArrayList<Clock> listClock = new ArrayList<>();
		conn = DBConnectionUtil.getConnection();
		String query = "SELECT c.id AS cid , c.name AS cname , preview, detail, picture, price, number, discount , id_cat , cat.name AS catname "
				+ "FROM clock AS c "
				+ "INNER JOIN categories AS cat "
				+ "ON c.id_cat = cat.id "
				+ "ORDER BY discount DESC LIMIT 0, 3 ";
		try {
			st = conn.createStatement();
			rs = st.executeQuery(query);
			while(rs.next()){
				int cid = rs.getInt("cid");
				String cname = rs.getString("cname");
				String preview = rs.getString("preview");
				String detail = rs.getString("detail");
				String picture = rs.getString("picture");
				int price = rs.getInt("price");
				int number = rs.getInt("number");
				int discount = rs.getInt("discount");
				Categories categories = new Categories(rs.getInt("id_cat"), rs.getString("catname"));
				Clock itemClock = new Clock(cid, cname, preview, detail, picture, price, number, discount, categories);
				listClock.add(itemClock);
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
		return listClock;
	}

	public ArrayList<Clock> getItems(int id) {
		ArrayList<Clock> listClock = new ArrayList<>();
		conn = DBConnectionUtil.getConnection();
		String query = "SELECT c.id AS cid , c.name AS cname , preview, detail, picture, price, number, discount , id_cat , cat.name AS catname "
				+ "FROM clock AS c "
				+ "INNER JOIN categories AS cat "
				+ "ON c.id_cat = cat.id "
				+ "WHERE id_cat = ? "
				+ "ORDER BY c.id DESC ";
		try {
			pst = conn.prepareStatement(query);
			pst.setInt(1, id);
			rs = pst.executeQuery();
			while(rs.next()){
				int cid = rs.getInt("cid");
				String cname = rs.getString("cname");
				String preview = rs.getString("preview");
				String detail = rs.getString("detail");
				String picture = rs.getString("picture");
				int price = rs.getInt("price");
				int number = rs.getInt("number");
				int discount = rs.getInt("discount");
				Categories categories = new Categories(rs.getInt("id_cat"), rs.getString("catname"));
				Clock itemClock = new Clock(cid, cname, preview, detail, picture, price, number, discount, categories);
				listClock.add(itemClock);
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
		return listClock;
	}

	public ArrayList<Clock> getTimKiem(String s) {
		ArrayList<Clock> listClock = new ArrayList<>();
		conn = DBConnectionUtil.getConnection();
		String query = "SELECT c.id AS cid , c.name AS cname , preview, detail, picture, price, number, discount , id_cat , cat.name AS catname "
				+ "FROM clock AS c "
				+ "INNER JOIN categories AS cat "
				+ "ON c.id_cat = cat.id "
				+ "WHERE c.name LIKE ? OR preview LIKE ? OR detail LIKE ? "
				+ "ORDER BY c.id DESC ";
		try {
			pst = conn.prepareStatement(query);
			pst.setString(1, "%"+s+"%" );
			pst.setString(2, "%"+s+"%" );
			pst.setString(3, "%"+s+"%" );
			rs = pst.executeQuery();
			while(rs.next()){
				int cid = rs.getInt("cid");
				String cname = rs.getString("cname");
				String preview = rs.getString("preview");
				String detail = rs.getString("detail");
				String picture = rs.getString("picture");
				int price = rs.getInt("price");
				int number = rs.getInt("number");
				int discount = rs.getInt("discount");
				Categories categories = new Categories(rs.getInt("id_cat"), rs.getString("catname"));
				Clock itemClock = new Clock(cid, cname, preview, detail, picture, price, number, discount, categories);
				listClock.add(itemClock);
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
		return listClock;
	}

	
	
	
}
