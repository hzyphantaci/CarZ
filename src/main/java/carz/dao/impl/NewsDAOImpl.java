package carz.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import carz.dao.INewsDAO;
import carz.db.DBConnection;
import carz.po.CarPO;
import carz.po.NewsPO;
import carz.util.ResultSet2ListUtil;


public class NewsDAOImpl implements INewsDAO {
	
	public List<NewsPO> findByNewsPage(int currPageNo, int number){
		List<NewsPO> list = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DBConnection dbConn = DBConnection.getInstance();
		try {
			conn = dbConn.getConnection();
			String sql = "select * from carz_news";
			sql += " limit ?,?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, (currPageNo-1) * number);
			pstmt.setInt(2, number);
			rs = pstmt.executeQuery();
			if (rs != null) {
				list = new ArrayList<NewsPO>();
				list = ResultSet2ListUtil.putResult(rs, NewsPO.class);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbConn.close(conn, pstmt, rs);
		}
		return list;
	}
	
	public int findCount() {
		int count = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DBConnection dbConn = DBConnection.getInstance();
		try {
			conn = dbConn.getConnection();
			String sql = "select count(*) from carz_news";
			pstmt = conn.prepareStatement(sql);
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
	public List<NewsPO> findAllNews() {
		List<NewsPO> list = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DBConnection dbConn = DBConnection.getInstance();
		try {
			conn = dbConn.getConnection();
			String sql = "select * from carz_news";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if (rs != null) {
				list = new ArrayList<NewsPO>();
				list = ResultSet2ListUtil.putResult(rs, NewsPO.class);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbConn.close(conn, pstmt, rs);
		}
		return list;
	}

}
