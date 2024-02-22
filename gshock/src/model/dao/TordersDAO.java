package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import util.DBConnectionUtil;
import model.bean.Torders;

public class TordersDAO {
	private Connection conn;
	private PreparedStatement pst;
	private ResultSet rs;
	private Statement st;
	
	public Torders getItemST1() {
		Torders item = null;
		conn = DBConnectionUtil.getConnection();
		String query = "SELECT * FROM torders WHERE status = 1";
		try {
			st = conn.createStatement();
			rs = st.executeQuery(query);
			if(rs.next()){
				int id = rs.getInt("id");
				String fullname = rs.getString("fullname");
				String address = rs.getString("address");
				int phone = rs.getInt("phone");
				String email = rs.getString("email");
				String payment = rs.getString("payment_thod");
				int status = rs.getInt("status");
				int result = rs.getInt("result");
				String content = rs.getString("content");
				item = new Torders(id, fullname, address, payment, status, result, phone, email, content);
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
		return item;
	}

	public void addItem() {
		int result = 0;
		conn = DBConnectionUtil.getConnection();
		String query = "INSERT INTO torders(fullname,address,phone,email,payment_thod,content) VALUES('','',0,'','','')";
		try {
			st = conn.createStatement();
			result = st.executeUpdate(query);
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
	}

	public void editST(Torders item) {
		int tt = 0;
		conn = DBConnectionUtil.getConnection();
		String query = "UPDATE torders SET fullname = ? , address = ?, phone = ?, email = ?, payment_thod = ?, status = 0 , content = ? WHERE status = 1";
		try {
			pst = conn.prepareStatement(query);
			pst.setString(1, item.getFullname());
			pst.setString(2, item.getAddress());
			pst.setInt(3, item.getPhone());
			pst.setString(4, item.getEmail());
			pst.setString(5, item.getPayment());
			pst.setString(6, item.getContent());
			tt = pst.executeUpdate();
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
		
	}

	public ArrayList<Torders> getItems() {
		ArrayList<Torders> listĐH = new ArrayList<>();
		conn = DBConnectionUtil.getConnection();
		String query = "SELECT * FROM torders WHERE status = 0 ORDER BY id DESC";
		try {
			st = conn.createStatement();
			rs = st.executeQuery(query);
			while(rs.next()){
				int id = rs.getInt("id");
				String fullname = rs.getString("fullname");
				String address = rs.getString("address");
				int phone = rs.getInt("phone");
				String email = rs.getString("email");
				String payment = rs.getString("payment_thod");
				int status = rs.getInt("status");
				int result = rs.getInt("result");
				String content = rs.getString("content");
				Torders item = new Torders(id, fullname, address, payment, status, result, phone, email, content);
				listĐH.add(item);
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
		return listĐH;
	}

	public void editRS(int id) {
		int tt = 0;
		conn = DBConnectionUtil.getConnection();
		String query = "UPDATE torders SET result = 1 WHERE id = ?";
		try {
			pst = conn.prepareStatement(query);
			pst.setInt(1, id);
			tt = pst.executeUpdate();
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
		
	}
}
