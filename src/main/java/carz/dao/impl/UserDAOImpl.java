package carz.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import carz.dao.IUserDAO;
import carz.db.DBConnection;
import carz.po.UserPO;
import carz.util.ResultSet2ListUtil;

public class UserDAOImpl implements IUserDAO {
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
			System.out.println(user.getUserPassword());
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

}
