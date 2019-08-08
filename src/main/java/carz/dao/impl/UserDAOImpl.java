package carz.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import carz.dao.IUserDAO;
import carz.db.DBConnection;
import carz.po.BuyOrderPO;
import carz.po.SellPO;
import carz.po.UserPO;
import carz.util.ResultSet2ListUtil;

public class UserDAOImpl implements IUserDAO {
	public String findEmailById(int id) {
		String email = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DBConnection dbConn = DBConnection.getInstance();
		try {
			conn = dbConn.getConnection();
			String sql = "select user_email from carz_user where user_id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				email = rs.getString("user_email");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbConn.close(conn, pstmt, rs);
		}
		return email;
	}

	public void addBuyOrder(String code, int comId, int userId,
			int buyConcactWay, String buyConcactAddress, String date,
			String appointmentTime) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int count = 0;
		DBConnection dbConn = DBConnection.getInstance();
		try {
			conn = dbConn.getConnection();
			String sql = "insert into carz_buy_order values ( 0,?,?,?,?,?,?,?,1)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, code);
			count = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbConn.close(conn, pstmt, rs);
		}
	}
	public List<BuyOrderPO> findAllBuyOrderByStateAndId(int currPageNo,
			int number, int state, int id) {
		List<BuyOrderPO> buyList = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DBConnection dbConn = DBConnection.getInstance();
		try {
			conn = dbConn.getConnection();
			String sql = "select * from carz_buy_order where buy_state = ? and user_id = ? limit ?,?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, state);
			pstmt.setInt(2, id);
			pstmt.setInt(3, currPageNo * number);
			pstmt.setInt(4, number);
			rs = pstmt.executeQuery();
			if (rs != null) {
				buyList = new ArrayList<BuyOrderPO>();
				buyList = ResultSet2ListUtil.putResult(rs, BuyOrderPO.class);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbConn.close(conn, pstmt, rs);
		}
		return buyList;
	}
	public List<UserPO> findAllEmail() {
		List<UserPO> userList = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		UserPO user = null;
		DBConnection dbConn = DBConnection.getInstance();
		try {
			conn = dbConn.getConnection();
			String sql = "select * from carz_user";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if (rs != null) {
				userList = new ArrayList<UserPO>();
				while (rs.next()) {
					user = new UserPO();
					user.setUserEmail(rs.getString("user_email"));
					userList.add(user);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbConn.close(conn, pstmt, rs);
		}
		return userList;
	}
	@Override
	public List<UserPO> findAllUser() {
		List<UserPO> list = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DBConnection dbConn = DBConnection.getInstance();
		try {
			conn = dbConn.getConnection();
			String sql = "select * from carz_user";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if (rs != null) {
				list = new ArrayList<UserPO>();
				// initialVector(rs, list);
				list = ResultSet2ListUtil.putResult(rs, UserPO.class);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbConn.close(conn, pstmt, rs);
		}
		return list;
	}
	@Override
	public boolean regist(UserPO user) {
		boolean flag = false;
		Connection conn = null;
		PreparedStatement pstmt = null;
		DBConnection dbConn = DBConnection.getInstance();
		int count = 0;
		try {
			conn = dbConn.getConnection();
			String sql = "insert into carz_user values(null,?,?,null,?,null)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getUserName());
			pstmt.setString(2, user.getUserPassword());
			pstmt.setString(3, user.getUserEmail());
			count = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbConn.close(conn, pstmt);
		}
		if (count > 0)
			flag = true;
		return flag;
	}
	@Override
	public UserPO findByEmail(String email) {
		List<UserPO> list = null;
		UserPO user = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DBConnection dbConn = DBConnection.getInstance();
		try {
			conn = dbConn.getConnection();
			String sql = "select * from carz_user where user_email = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();
			if (rs != null) {
				list = new ArrayList<UserPO>();
				list = ResultSet2ListUtil.putResult(rs, UserPO.class);
				if (list.size() != 0) {
					user = list.get(0);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbConn.close(conn, pstmt, rs);
		}
		return user;
	}
	public static void initialVector(ResultSet rs, List<UserPO> userList) {
		try {
			while (rs.next()) {
				int id = rs.getInt("user_id");
				String userName = rs.getString("user_name");
				String password = rs.getString("user_password");
				String address = rs.getString("user_address");
				String email = rs.getString("user_email");
				String phone = rs.getString("user_phone");
				UserPO userPO = new UserPO(id, userName, password, address,
						email, phone);
				userList.add(userPO);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public String findUserNameById(int id) {
		String namess = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DBConnection dbConn = DBConnection.getInstance();
		try {
			conn = dbConn.getConnection();
			String sql = "select user_name from carz_user where user_id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			rs = pstmt.executeQuery();
			if (rs != null && rs.next()) {
				namess = rs.getString("user_name");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbConn.close(conn, pstmt, rs);
		}
		return namess;
	}

	public List<SellPO> findAllSellOrderById(int currPageNo, int number,
			int id) {
		List<SellPO> sellList = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DBConnection dbConn = DBConnection.getInstance();
		try {
			conn = dbConn.getConnection();
			String sql = "select * from carz_sell_order where user_id = ?  limit ?,?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			pstmt.setInt(2, currPageNo * number);
			pstmt.setInt(3, number);
			rs = pstmt.executeQuery();
			if (rs != null) {
				sellList = new ArrayList<SellPO>();
				sellList = ResultSet2ListUtil.putResult(rs, SellPO.class);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbConn.close(conn, pstmt, rs);
		}
		return sellList;
	}
	public List<BuyOrderPO> findAllBuyOrderByState(int currPageNo, int number,
			int state) {
		List<BuyOrderPO> buyList = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DBConnection dbConn = DBConnection.getInstance();
		try {
			conn = dbConn.getConnection();
			String sql = "select * from carz_buy_order where buy_state = ?  limit ?,?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, state);
			pstmt.setInt(2, currPageNo * number);
			pstmt.setInt(3, number);
			rs = pstmt.executeQuery();
			if (rs != null) {
				buyList = new ArrayList<BuyOrderPO>();
				buyList = ResultSet2ListUtil.putResult(rs, BuyOrderPO.class);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbConn.close(conn, pstmt, rs);
		}
		return buyList;
	}

	public void update(String code) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int count = 0;
		DBConnection dbConn = DBConnection.getInstance();
		try {
			conn = dbConn.getConnection();
			String sql = "update carz_buy_order set buy_state = 0 where buy_code = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, code);
			count = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbConn.close(conn, pstmt, rs);
		}
	}
	public Date findDateByBuyId(int id) {
		Date date = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int count = 0;
		DBConnection dbConn = DBConnection.getInstance();
		try {
			conn = dbConn.getConnection();
			String sql = "select buy_date from carz_buy_order where buy_id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				date = rs.getDate("buy_date");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbConn.close(conn, pstmt, rs);
		}
		return date;
	}
	public Date findAppointmentTimeByBuyId(int id) {
		Date date = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int count = 0;
		DBConnection dbConn = DBConnection.getInstance();
		try {
			conn = dbConn.getConnection();
			String sql = "select buy_appointment_time from carz_buy_order where buy_id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				date = rs.getDate("buy_appointment_time");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbConn.close(conn, pstmt, rs);
		}
		return date;
	}

}
