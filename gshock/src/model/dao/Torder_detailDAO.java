package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import util.DBConnectionUtil;
import model.bean.Clock;
import model.bean.Torder_detail;
import model.bean.Torders;

public class Torder_detailDAO {
	private Connection conn;
	private PreparedStatement pst;
	private Statement st;
	private ResultSet rs;
	
	public Torder_detail getItem(int idc, int idt) {
		Torder_detail item = null;
		conn = DBConnectionUtil.getConnection();
		String query = "SELECT * FROM torder_detail WHERE id_clock = ? AND id_torders = ?";
		try {
			pst = conn.prepareStatement(query);
			pst.setInt(1, idc);
			pst.setInt(2, idt);
			rs = pst.executeQuery();
			if(rs.next()){
				int id = rs.getInt("id");
				int number = rs.getInt("number");
				Clock clock = new Clock(idc, null, null, null, null, 0, 0, 0, null);
				Torders torders = new Torders(idt, null, null, null, 0, 0, 0, null,null);
				item = new Torder_detail(id, clock, torders, number);
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
		return item;
	}

	public void editNumb(int id, int number) {
		int result = 0;
		conn = DBConnectionUtil.getConnection();
		String query = "UPDATE torder_detail SET number = ? WHERE id = ?";
		try {
			pst = conn.prepareStatement(query);
			pst.setInt(1, number);
			pst.setInt(2, id);
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
	}

	public void addItem(Torder_detail item) {
		int result = 0;
		conn = DBConnectionUtil.getConnection();
		String query = "INSERT INTO torder_detail(id_clock,id_torders,number) VALUES (?,?,?)";
		try {
			pst = conn.prepareStatement(query);
			pst.setInt(1, item.getClock().getId());
			pst.setInt(2, item.getTorders().getId());
			pst.setInt(3, item.getNumber());
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
		
	}

	public int countItem() {
		int numb = 0;
		conn = DBConnectionUtil.getConnection();
		String query = "SELECT id_torders, SUM(number) AS tong FROM torder_detail GROUP BY id_torders ORDER BY id_torders DESC LIMIT 0,1";
		try {
			st = conn.createStatement();
			rs = st.executeQuery(query);
			if(rs.next()){
				numb = rs.getInt("tong");
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
		return numb;
	}

	public ArrayList<Torder_detail> getItems(int id3) {
		ArrayList<Torder_detail> listItem = new ArrayList<>();
		conn = DBConnectionUtil.getConnection();
		String query = "SELECT td.id AS tid, id_clock , c.name AS cname, price, discount, id_torders ,fullname,address,phone,email,payment_thod,t.status AS tstatus, result, t.content AS tcontent, td.number AS tdnumber "
				+ "FROM torder_detail AS td "
				+ "INNER JOIN torders AS t "
				+ "ON td.id_torders = t.id "
				+ "INNER JOIN clock AS c "
				+ "ON td.id_clock = c.id "
				+ "WHERE t.id = ?";
		try {
			pst = conn.prepareStatement(query);
			pst.setInt(1, id3);
			rs = pst.executeQuery();
			while(rs.next()){
				int tid = rs.getInt("tid");
				int id_clock = rs.getInt("id_clock");
				String cname = rs.getString("cname");
				int price = rs.getInt("price");
				int discount = rs.getInt("discount");
				int id_torders = rs.getInt("id_torders");
				String fullname = rs.getString("fullname");
				String address = rs.getString("address");
				int phone = rs.getInt("phone");
				String email = rs.getString("email");
				String payment = rs.getString("payment_thod");
				int tstatus = rs.getInt("tstatus");
				int result = rs.getInt("result");
				String tcontent = rs.getString("tcontent");
				int tdnumber = rs.getInt("tdnumber");
				Clock clock = new Clock(id_clock, cname, null, null, null, price, 0, discount, null);
				Torders torders = new Torders(id_torders, fullname, address, payment, tstatus, result, phone, email, tcontent);
				Torder_detail item = new Torder_detail(tid, clock, torders, tdnumber);
				listItem.add(item);
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
		return listItem;
	}

	public ArrayList<Torder_detail> getItems() {
		ArrayList<Torder_detail> listItem = new ArrayList<>();
		conn = DBConnectionUtil.getConnection();
		String query = "SELECT td.id AS tid, id_clock , c.name AS cname, price, discount, id_torders ,fullname,address,phone,email,payment_thod,t.status AS tstatus, result, t.content AS tcontent, td.number AS tdnumber "
				+ "FROM torder_detail AS td "
				+ "INNER JOIN torders AS t "
				+ "ON td.id_torders = t.id "
				+ "INNER JOIN clock AS c "
				+ "ON td.id_clock = c.id "
				+ "ORDER BY td.id DESC";
		try {
			st = conn.createStatement();
			rs = st.executeQuery(query);
			while(rs.next()){
				int tid = rs.getInt("tid");
				int id_clock = rs.getInt("id_clock");
				String cname = rs.getString("cname");
				int price = rs.getInt("price");
				int discount = rs.getInt("discount");
				int id_torders = rs.getInt("id_torders");
				String fullname = rs.getString("fullname");
				String address = rs.getString("address");
				int phone = rs.getInt("phone");
				String email = rs.getString("email");
				String payment = rs.getString("payment_thod");
				int tstatus = rs.getInt("tstatus");
				int result = rs.getInt("result");
				String tcontent = rs.getString("tcontent");
				int tdnumber = rs.getInt("tdnumber");
				Clock clock = new Clock(id_clock, cname, null, null, null, price, 0, discount, null);
				Torders torders = new Torders(id_torders, fullname, address, payment, tstatus, result, phone, email, tcontent);
				Torder_detail item = new Torder_detail(tid, clock, torders, tdnumber);
				listItem.add(item);
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
		return listItem;
	}
}
