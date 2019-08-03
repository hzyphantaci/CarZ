package carz.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import carz.dao.ICityDAO;
import carz.db.DBConnection;
import carz.po.CarPO;
import carz.po.CityPO;
import carz.util.ResultSet2ListUtil;

public class CityDAOImpl implements ICityDAO {

	@Override
	public List<CityPO> searchCitys() {
		List<CityPO> list = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DBConnection dbConn = DBConnection.getInstance();
		try {
			conn = dbConn.getConnection();
			String sql = "select * from carz_city";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if (rs != null) {
				list = new ArrayList<CityPO>();
				list = ResultSet2ListUtil.putResult(rs, CityPO.class);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbConn.close(conn, pstmt, rs);
		}
		return list;
	}

	@Override
	public List<String> searchCitysName() {
		List<String> list = new ArrayList<String>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DBConnection dbConn = DBConnection.getInstance();
		try {
			conn = dbConn.getConnection();
			String sql = "select distinct city_address from carz_city order by convert(city_address using gbk)";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if (rs != null) {
				while(rs.next()) {
					list.add(rs.getString("city_address"));
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbConn.close(conn, pstmt, rs);
		}
		return list;
	}

}
