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
			sql += " limit ?,? ";
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
	// id查询
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
				compo = ResultSet2ListUtil.putResult(rs, CommodityPO.class)
						.get(0);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbConn.close(conn, pstmt, rs);
		}
		return compo;
	}
	// 汽车数量(编号)
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
	public List<CommodityPO> findByPrice(int currPageNo, int number,
			double str) {
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
	public List<CommodityPO> findByColor(int currPageNo, int number,
			String str) {
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
	public List<CommodityPO> findByAddress(int currPageNo, int number,
			String str) {
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
			sql += " limit ?,? ";
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
	public String findCarNameIdByComId(int id) {
		String comName = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DBConnection dbConn = DBConnection.getInstance();
		try {
			conn = dbConn.getConnection();
			String sql = "select car_model from carz_car where car_id = (select car_id from carz_commodity where com_id = ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				comName = rs.getString("car_model");
			}
			System.out.println(comName);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbConn.close(conn, pstmt, rs);
		}
		return comName;
	}
	public String findStateByState(int state) {
		String stateStr = null;
		if (state == 0) {
			stateStr = "取消订单";
		} else if (state == 1) {
			stateStr = "提交订单";
		} else if (state == 2) {
			stateStr = "核对订单";
		}else if (state == 3) {
			stateStr = "交易";
		}else if (state == 4) {
			stateStr = "完成";
		}else if (state == 5) {
			stateStr = "售后状态";
		}
		return stateStr;
	}
	@Override
	public List<CommodityPO> findByAll(int currPageNo, String address,
			String[] brand, Double budget, String[] type, String color,
			String power, String gear, int state) {
		List<CommodityPO> list = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DBConnection dbConn = DBConnection.getInstance();
		try {
			conn = dbConn.getConnection();
			String sql = "select com_id, com.car_id,com_state,com_price ,com_date, com_mileage, com_color, com_address,"
					+ " com_license_address, com_insurance, com_tax ,com_carid ,com_update_time, com_status "
					+ "from carz_commodity com join carz_car car where com.car_id=car.car_id";
			if (address != null && !"".equals(address)
					&& !"all".equals(address))
				sql += " and com_address ='" + address + "' ";
			if (brand != null && brand.length != 0) {
				sql += " and car_brand in (";
				for (int i = 0; i < brand.length; i++) {
					if (i != 0)
						sql += ",";
					sql += "'" + brand[i] + "'";
				}
				sql += ") ";
			}
			if (type != null && type.length != 0) {
				sql += " and car_type in (";
				for (int i = 0; i < type.length; i++) {
					if (i != 0)
						sql += ",";
					sql += "'" + type[i] + "'";
				}
				sql += ") ";
			}
			if (color != null && !"".equals(color))
				sql += " and com_color = '" + color + "' ";
			if (power != null && !"".equals(power))
				sql += " and car_power = '" + power + "' ";
			if (gear != null && !"".equals(gear))
				sql += " and car_gear = '" + gear + "' ";
			if (state != 0 && !"".equals(state)) {
				sql += " and com_state = " + state + " ";
			}
			if (budget > 0) {
				sql += " and com_price between " + budget * 7000 + " and "
						+ budget * 13000 + " ";
			} else if (budget == -1) {
				sql += " and com_price > 3000000";
			}
			if (currPageNo != 0) {
//				System.out.println("daoCurrPageNo:"+(currPageNo - 1) * 6+currPageNo * 6);
				sql += " limit " + (currPageNo - 1) * 6 + "," + 6;
			}
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if (rs != null) {
				list = new ArrayList<CommodityPO>();
				list = ResultSet2ListUtil.putResult(rs, CommodityPO.class);
			}
			 System.out.println(sql);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbConn.close(conn, pstmt, rs);
		}
		return list;
	}
	@Override
	public int comCountByAll(int currPageNo, String address, String[] brand,
			Double budget, String[] type, String color, String power,
			String gear, int state) {
		currPageNo = 0;
		List<CommodityPO> list = this.findByAll(currPageNo, address, brand,
				budget, type, color, power, gear, state);
		return list.size();
	}
}
