package carz.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import carz.dao.ISellDAO;
import carz.db.DBConnection;
import carz.po.SellPO;
import carz.util.ResultSet2ListUtil;

public class SellDAOImpl implements ISellDAO {

	public int findCount(int keyword) {
		int count = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DBConnection dbConn = DBConnection.getInstance();
		try {
			// 获取记录数（无条件）
			String sql = "select count(*) from carz_sell_order where sell_state = ?";
			conn = dbConn.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, keyword);
			// 执行
			rs = pstmt.executeQuery();
			if (rs.next()) {
				count = rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbConn.close(conn, pstmt, rs);
		}

		return count;
	}
	public int findCount() {
		int count = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DBConnection dbConn = DBConnection.getInstance();
		try {
			// 获取记录数（无条件）
			String sql = "select count(*) from carz_sell_order";
			conn = dbConn.getConnection();
			pstmt = conn.prepareStatement(sql);
			// 执行
			rs = pstmt.executeQuery();
			if (rs.next()) {
				count = rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbConn.close(conn, pstmt, rs);
		}

		return count;
	}

	public List<SellPO> findSellByState(int currPageNo, int number, int state) {
		List<SellPO> list = null;
		SellPO sellPO = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DBConnection dbConn = DBConnection.getInstance();
		try {
			conn = dbConn.getConnection();
			String sql = "select * from carz_sell_order where sell_state = ?  limit ?,?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, state);
			pstmt.setInt(2, currPageNo * number);
			pstmt.setInt(3, number);
			rs = pstmt.executeQuery();
			if (rs != null) {
				list = new ArrayList<SellPO>();
				list = ResultSet2ListUtil.putResult(rs, SellPO.class);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbConn.close(conn, pstmt, rs);
		}
		return list;
	}

	public void update(int id, int state) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int count =0;
		DBConnection dbConn = DBConnection.getInstance();
		try {
			conn = dbConn.getConnection();
			String sql = "update carz_sell_order set sell_state = ? where sell_id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, state);
			pstmt.setInt(2, id);
			count=pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbConn.close(conn, pstmt, rs);
		}
	}

	public String findCarNameById(int id) {
		String carName = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DBConnection dbConn = DBConnection.getInstance();
		try {
			conn = dbConn.getConnection();
			String sql = "select car_model from carz_car where car_id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				carName = rs.toString();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbConn.close(conn, pstmt, rs);
		}
		return carName;
	}

	public String findStateByState(int state) {
		String stateStr = null;
		if (state == 0) {
			stateStr = "取消订单";
		} else if (state == 1) {
			stateStr = "审核订单";
		} else if (state == 2) {
			stateStr = "查验订单";
		} else if (state == 3) {
			stateStr = "待上架";
		} else if (state == 4) {
			stateStr ="已上架订单";
		} else if (state ==5) {
			stateStr = "已下架订单";
		} else if (state ==6) {
			stateStr ="完成交易";
		}
		return stateStr;
	}
	public String findBrandByCarId(int carId) {
		String carBrand = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DBConnection dbConn = DBConnection.getInstance();
		try {
			conn = dbConn.getConnection();
			String sql = "select car_brand from carz_car where car_id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, carId);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				carBrand = rs.getString("car_brand");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbConn.close(conn, pstmt, rs);
		}
		return carBrand;
	}
	public Date findSellDateBySellId(int id) {
		Date date = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DBConnection dbConn = DBConnection.getInstance();
		try {
			conn = dbConn.getConnection();
			String sql = "select sell_date from carz_sell_order where sell_id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				date = rs.getDate("sell_date");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbConn.close(conn, pstmt, rs);
		}
		return date;
	}

}
