package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import util.DBConnectionUtil;
import model.bean.District;
import model.bean.Ward;

public class WardDAO {
	private Connection conn;
	private PreparedStatement pst;
	private ResultSet rs;
	private Statement st;
	
	public ArrayList<Ward> getItems(String dname) {
		ArrayList<Ward> listXa = new ArrayList<>();
		conn = DBConnectionUtil.getConnection();
		String query = "SELECT w.id AS wid , w.name AS wname, d.id AS did "
				+ "FROM ward AS w "
				+ "INNER JOIN district AS d "
				+ "ON w.district_id = d.id "
				+ "WHERE d.name = ?";
		try {
			pst = conn.prepareStatement(query);
			pst.setString(1, dname);
			rs = pst.executeQuery();
			while(rs.next()){
				int id = rs.getInt("wid");
				String name = rs.getString("wname");
				int did = rs.getInt("did");
				District district = new District(did, dname, null, null);
				Ward item = new Ward(id, name, null, district);
				listXa.add(item);
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
		return listXa;
	}
}
