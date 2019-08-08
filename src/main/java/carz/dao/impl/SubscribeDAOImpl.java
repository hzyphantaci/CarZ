package carz.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import carz.dao.ISubscribeDAO;
import carz.db.DBConnection;
import carz.po.SubscribePO;
import carz.util.ResultSet2ListUtil;

public class SubscribeDAOImpl implements ISubscribeDAO {

	public List<SubscribePO> findAllSubscribeByState(int currPageNo, int number , int state) {
		List<SubscribePO> list = null;
		SubscribePO subPO = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DBConnection dbConn = DBConnection.getInstance();
		try {
			conn = dbConn.getConnection();
			String sql = "select * from carz_subscribe_order where subscribe_state = ? limit ?,?";
			pstmt = conn.prepareStatement(sql);			
			pstmt.setInt(1, state);
			pstmt.setInt(2, currPageNo * number);
			pstmt.setInt(3, number);
			rs = pstmt.executeQuery();
			if (rs != null) {
				list = new ArrayList<SubscribePO>();
				list = ResultSet2ListUtil.putResult(rs, SubscribePO.class);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbConn.close(conn, pstmt, rs);
		}
		return list;
	}

	public List<SubscribePO> findSubscribeByEmail(int currPageNo, int number, String email) {
		List<SubscribePO> list = null;
		SubscribePO subPO = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DBConnection dbConn = DBConnection.getInstance();
		try {
			conn = dbConn.getConnection();
			String sql = "select * from carz_subscribe_order where user_email = ? and subscribe_state = 1 limit ?,?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, email);
			pstmt.setInt(2, currPageNo * number);
			pstmt.setInt(3, number);
			rs = pstmt.executeQuery();
			if (rs != null) {
				list = new ArrayList<SubscribePO>();
				list = ResultSet2ListUtil.putResult(rs, SubscribePO.class);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbConn.close(conn, pstmt, rs);
		}
		return list;
	}

	public void update(int state, int id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DBConnection dbConn = DBConnection.getInstance();
		try {
			conn = dbConn.getConnection();
			String sql = "update carz_subscribe_order set subscribe_state = ? where user_id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, state);
			pstmt.setInt(2, id);
			rs = pstmt.executeQuery();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbConn.close(conn, pstmt, rs);
		}
	}

	public void delete(int subscribeId) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int count = -1;
		DBConnection dbConn = DBConnection.getInstance();
		try {
			conn = dbConn.getConnection();
			String sql = "delete from carz_subscribe_order where subscribe_id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, subscribeId);
			count=pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbConn.close(conn, pstmt, rs);
		}
	}

	public void addSubscribe(int subscribeId, int userId, String email, int carId, String subscribeUrl, String date,
			int state) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int count =0;
		DBConnection dbConn = DBConnection.getInstance();
		try {
			conn = dbConn.getConnection();
			String sql = "insert into carz_subscribe_order values ( ? ,  ? ,  ? ,"
					+ "  ? , ? ,  ?, ? )";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, subscribeId);
			pstmt.setInt(2, userId);
			pstmt.setString(3, email);
			pstmt.setInt(4, carId);
			pstmt.setString(5, subscribeUrl);
			pstmt.setString(6, date);
			pstmt.setInt(7, state);
			count = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbConn.close(conn, pstmt, rs);
		}
	}

	

}
