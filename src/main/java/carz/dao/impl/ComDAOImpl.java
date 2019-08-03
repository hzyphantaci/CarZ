package carz.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import carz.dao.IComDAO;
import carz.db.DBConnection;
import carz.po.CarPO;
import carz.po.CommodityPO;
import carz.util.ResultSet2ListUtil;

public class ComDAOImpl implements IComDAO {

	public List<CommodityPO> findAllCom(int currPageNo) {
		List<CommodityPO> list = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DBConnection dbConn = DBConnection.getInstance();
		try {
			conn = dbConn.getConnection();
			String sql = "select * from carz_commodity";
			sql += " limit ?,?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, currPageNo * 6);
			pstmt.setInt(2, 6);
			rs = pstmt.executeQuery();
			if (rs != null) {
				list = new ArrayList<CommodityPO>();
				list = ResultSet2ListUtil.putResult(rs, CommodityPO.class);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbConn.close(conn, pstmt, rs);
		}
		return list;
	}
	//id查询
	public CommodityPO findById(int id) {
		List<CarPO> list = null;
		CommodityPO compo = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DBConnection dbConn = DBConnection.getInstance();
		try {
			conn = dbConn.getConnection();
			String sql = "select * from carz_car where com_id = '?' ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(0, id);
			rs = pstmt.executeQuery();
			if (rs != null && rs.next()) {
				list = new ArrayList<CarPO>();
				compo = new CommodityPO();
				compo = ResultSet2ListUtil.putResult(rs, CommodityPO.class).get(0);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbConn.close(conn, pstmt, rs);
		}
		return compo;
	}
	//汽车数量(编号)
	public int findCount(String keyword) {
		int count = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DBConnection dbConn = DBConnection.getInstance();
		try {
			// 获取记录数（无条件）
			String sql = "select count(*) from carz_commodity";
			// 有条件（添加where语句）
			if (keyword != null && !(keyword = keyword.trim()).equals("")) {
				sql += " where com_carid like ?";
			}
			conn = dbConn.getConnection();
			pstmt = conn.prepareStatement(sql);
			// 如果有条件，设置占位符（？）的值
			if (keyword != null && !keyword.equals("")) {
				// 添加模糊匹配符号
				if (keyword.startsWith("%") && keyword.endsWith("%")) {
					pstmt.setString(1, keyword);
				} else {
					pstmt.setString(1, "%" + keyword + "%");
				}
			}
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
	
	public List<CommodityPO> findByState(int currPageNo, int number, int str) {
		List<CommodityPO> list = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DBConnection dbConn = DBConnection.getInstance();
		try {
			conn = dbConn.getConnection();
			String sql = "select * from carz_commodity where com_state = '?' ";
			sql += " limit ?,?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, str);
			pstmt.setInt(2, currPageNo * number);
			pstmt.setInt(3, number);
			rs = pstmt.executeQuery();
			if (rs != null) {
				list = new ArrayList<CommodityPO>();
				// initialVector(rs, list);
				list = ResultSet2ListUtil.putResult(rs, CommodityPO.class);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbConn.close(conn, pstmt, rs);
		}
		return list;
	}
	public List<CommodityPO> findByPrice(int currPageNo, int number, double str) {
		List<CommodityPO> list = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DBConnection dbConn = DBConnection.getInstance();
		try {
			conn = dbConn.getConnection();
			String sql = "select * from carz_commodity where com_price > ?";
			sql += " limit ?,?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setDouble(1, str);
			pstmt.setInt(2, currPageNo * number);
			pstmt.setInt(3, number);
			rs = pstmt.executeQuery();
			if (rs != null) {
				list = new ArrayList<CommodityPO>();
				// initialVector(rs, list);
				list = ResultSet2ListUtil.putResult(rs, CommodityPO.class);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbConn.close(conn, pstmt, rs);
		}
		return list;
	}
	public List<CommodityPO> findByColor(int currPageNo, int number, String str) {
		List<CommodityPO> list = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DBConnection dbConn = DBConnection.getInstance();
		try {
			conn = dbConn.getConnection();
			String sql = "select * from carz_commodity where com_color = '?'";
			sql += " limit ?,?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, str);
			pstmt.setInt(2, currPageNo * number);
			pstmt.setInt(3, number);
			rs = pstmt.executeQuery();
			if (rs != null) {
				list = new ArrayList<CommodityPO>();
				// initialVector(rs, list);
				list = ResultSet2ListUtil.putResult(rs, CommodityPO.class);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbConn.close(conn, pstmt, rs);
		}
		return list;
	}
	public List<CommodityPO> findByAddress(int currPageNo, int number, String str) {
		List<CommodityPO> list = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DBConnection dbConn = DBConnection.getInstance();
		try {
			conn = dbConn.getConnection();
			String sql = "select * from carz_commodity where com_address = '?'";
			sql += " limit ?,?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, str);
			pstmt.setInt(2, currPageNo * number);
			pstmt.setInt(3, number);
			rs = pstmt.executeQuery();
			if (rs != null) {
				list = new ArrayList<CommodityPO>();
				// initialVector(rs, list);
				list = ResultSet2ListUtil.putResult(rs, CommodityPO.class);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbConn.close(conn, pstmt, rs);
		}
		return list;
	}
	public List<CommodityPO> findBystatus(int currPageNo, int number, int str) {
		List<CommodityPO> list = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DBConnection dbConn = DBConnection.getInstance();
		try {
			conn = dbConn.getConnection();
			String sql = "select * from carz_commodity where com_status = ?";
			sql += " limit ?,?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, str);
			pstmt.setInt(2, currPageNo * number);
			pstmt.setInt(3, number);
			rs = pstmt.executeQuery();
			if (rs != null) {
				list = new ArrayList<CommodityPO>();
				// initialVector(rs, list);
				list = ResultSet2ListUtil.putResult(rs, CommodityPO.class);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbConn.close(conn, pstmt, rs);
		}
		return list;
	}
	
	
}
