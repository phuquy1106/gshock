package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import util.DBConnectionUtil;
import model.bean.District;
import model.bean.Province;

public class DistrictDAO {
	private Connection conn;
	private PreparedStatement pst;
	private ResultSet rs;
	private Statement st;
	
	public ArrayList<District> getItems(int pid) {
		ArrayList<District> listHuyen = new ArrayList<>();
		conn = DBConnectionUtil.getConnection();
		String query = "SELECT * FROM district WHERE province_id = ? ";
		try {
			pst = conn.prepareStatement(query);
			pst.setInt(1, pid);
			rs = pst.executeQuery();
			while(rs.next()){
				int id = rs.getInt("id");
				String name = rs.getString("name");
				String type = rs.getString("type");
				Province province = new Province(pid, null, null);
				District item = new District(id, name, type, province);
				listHuyen.add(item);
			}
		} catch (SQLException e) {
			
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
		
		return listHuyen;
	}

	public ArrayList<District> getItems(String name) {
		ArrayList<District> listHuyen = new ArrayList<>();
		conn = DBConnectionUtil.getConnection();
		String query = "SELECT d.id AS did , d.name AS dname , p.id AS pid "
				+ "FROM district AS d "
				+ "INNER JOIN province AS p "
				+ "ON d.province_id = p.id "
				+ "WHERE p.name = ?";
		try {
			pst = conn.prepareStatement(query);
			pst.setString(1, name);
			rs = pst.executeQuery();
			while(rs.next()){
				int id = rs.getInt("did");
				String dname = rs.getString("dname");
				Province province = new Province(rs.getInt("pid"), name, null);
				District item = new District(id, dname, null, province);
				listHuyen.add(item);
			}
		} catch (SQLException e) {
			
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
		
		return listHuyen;
	}
}
