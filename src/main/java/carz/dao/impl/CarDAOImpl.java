package carz.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import carz.dao.ICarDAO;
import carz.db.DBConnection;
import carz.po.CarPO;
import carz.util.ResultSet2ListUtil;

public class CarDAOImpl implements ICarDAO {

	public int findCount(String keyword) {
		int count = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DBConnection dbConn = DBConnection.getInstance();
		try {
			// 获取记录数（无条件）
			String sql = "select count(*) from snacks_foods";
			// 有条件（添加where语句）
			if (keyword != null && !(keyword = keyword.trim()).equals("")) {
				sql += " where fd_name like ?";
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
	// id查询
	public String findCarNameById(int id) {
		String carName = null;
		List<CarPO> list = null;
		CarPO carpo = null;
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
			if (rs != null && rs.next()) {
				carName = rs.getString("car_model");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbConn.close(conn, pstmt, rs);
		}
		return carName;
	}

	public List<CarPO> findAllCar(int currPageNo, int number) {
		List<CarPO> list = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DBConnection dbConn = DBConnection.getInstance();
		try {
			conn = dbConn.getConnection();
			String sql = "select * from carz_car";
			sql += " limit ?,?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, currPageNo * number);
			pstmt.setInt(2, number);
			rs = pstmt.executeQuery();
			if (rs != null) {
				list = new ArrayList<CarPO>();
				list = ResultSet2ListUtil.putResult(rs, CarPO.class);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbConn.close(conn, pstmt, rs);
		}
		return list;
	}
	// id查询
	public CarPO findById(int id) {
		List<CarPO> list = null;
		CarPO carpo = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DBConnection dbConn = DBConnection.getInstance();
		try {
			conn = dbConn.getConnection();
			String sql = " select * from carz_car where car_id = ? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			rs = pstmt.executeQuery();
			if (rs != null) {
				list = ResultSet2ListUtil.putResult(rs, CarPO.class);
				carpo = list.get(0);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbConn.close(conn, pstmt, rs);
		}
		return carpo;
	}

	// 通过品牌查找
	public List<CarPO> findByBrand(int currPageNo, int number, String str) {
		List<CarPO> list = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DBConnection dbConn = DBConnection.getInstance();
		try {
			conn = dbConn.getConnection();
			String sql = "select * from carz_car where car_brand = '?' ";
			sql += " limit ?,?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, str);
			pstmt.setInt(2, currPageNo * number);
			pstmt.setInt(3, number);
			rs = pstmt.executeQuery();
			if (rs != null) {
				list = new ArrayList<CarPO>();
				// initialVector(rs, list);
				list = ResultSet2ListUtil.putResult(rs, CarPO.class);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbConn.close(conn, pstmt, rs);
		}
		return list;
	}

	// 通过车名查找
	public List<CarPO> findByCarModel(int currPageNo, int number, String str) {
		List<CarPO> list = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DBConnection dbConn = DBConnection.getInstance();
		try {
			conn = dbConn.getConnection();
			String sql = "select * from carz_car where car_model like '%?%' ";
			sql += " limit ?,?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, str);
			pstmt.setInt(2, currPageNo * number);
			pstmt.setInt(3, number);
			rs = pstmt.executeQuery();
			if (rs != null) {
				list = new ArrayList<CarPO>();
				// initialVector(rs, list);
				list = ResultSet2ListUtil.putResult(rs, CarPO.class);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbConn.close(conn, pstmt, rs);
		}
		return list;
	}

	// 通过预算查找
	public List<CarPO> findByCarPrice(int currPageNo, int number, double d) {
		List<CarPO> list = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DBConnection dbConn = DBConnection.getInstance();
		try {
			conn = dbConn.getConnection();
			String sql = "select * from carz_car where car_price < ? ";
			sql += " limit ?,?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setDouble(1, d);
			pstmt.setInt(2, currPageNo * number);
			pstmt.setInt(3, number);
			rs = pstmt.executeQuery();
			if (rs != null) {
				list = new ArrayList<CarPO>();
				// initialVector(rs, list);
				list = ResultSet2ListUtil.putResult(rs, CarPO.class);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbConn.close(conn, pstmt, rs);
		}
		return list;
	}

	// 通过车型查找
	public List<CarPO> findByCarType(int currPageNo, int number, String str) {
		List<CarPO> list = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DBConnection dbConn = DBConnection.getInstance();
		try {
			conn = dbConn.getConnection();
			String sql = "select * from carz_car where car_type = '%?%' ";
			sql += " limit ?,?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, str);
			pstmt.setInt(2, currPageNo * number);
			pstmt.setInt(3, number);
			rs = pstmt.executeQuery();
			if (rs != null) {
				list = new ArrayList<CarPO>();
				// initialVector(rs, list);
				list = ResultSet2ListUtil.putResult(rs, CarPO.class);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbConn.close(conn, pstmt, rs);
		}
		return list;
	}
	// 通过档位查找
	public List<CarPO> findByCarGear(int currPageNo, int number, String str) {
		List<CarPO> list = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DBConnection dbConn = DBConnection.getInstance();
		try {
			conn = dbConn.getConnection();
			String sql = "select * from carz_car where car_gear = '%?%' ";
			sql += " limit ?,?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, str);
			pstmt.setInt(2, currPageNo * number);
			pstmt.setInt(3, number);
			rs = pstmt.executeQuery();
			if (rs != null) {
				list = new ArrayList<CarPO>();
				// initialVector(rs, list);
				list = ResultSet2ListUtil.putResult(rs, CarPO.class);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbConn.close(conn, pstmt, rs);
		}
		return list;
	}

	// 通过燃油类型查找
	public List<CarPO> findByCarPower(int currPageNo, int number, String str) {
		List<CarPO> list = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DBConnection dbConn = DBConnection.getInstance();
		try {
			conn = dbConn.getConnection();
			String sql = "select * from carz_car where car_power = '%?%' ";
			sql += " limit ?,?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, str);
			pstmt.setInt(2, currPageNo * number);
			pstmt.setInt(3, number);
			rs = pstmt.executeQuery();
			if (rs != null) {
				list = new ArrayList<CarPO>();
				// initialVector(rs, list);
				list = ResultSet2ListUtil.putResult(rs, CarPO.class);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbConn.close(conn, pstmt, rs);
		}
		return list;
	}
	// 通过价格区间查找
	public List<CarPO> findByCarPriceBetween(int currPageNo, int number,
			double d1, double d2) {
		List<CarPO> list = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DBConnection dbConn = DBConnection.getInstance();
		try {
			conn = dbConn.getConnection();
			String sql = "select * from carz_car where car_price between ? and ? ";
			sql += " limit ?,?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setDouble(1, d1);
			pstmt.setDouble(2, d2);
			pstmt.setInt(3, currPageNo * number);
			pstmt.setInt(4, number);
			rs = pstmt.executeQuery();
			if (rs != null) {
				list = new ArrayList<CarPO>();
				// initialVector(rs, list);
				list = ResultSet2ListUtil.putResult(rs, CarPO.class);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbConn.close(conn, pstmt, rs);
		}
		return list;
	}

	@Override
	public List<String> searchBrands() {
		List<String> list = new ArrayList<String>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DBConnection dbConn = DBConnection.getInstance();
		try {
			conn = dbConn.getConnection();
			String sql = "select distinct car_brand from carz_car order by convert(car_brand using gbk)";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if (rs != null) {
				while (rs.next()) {
					list.add(rs.getString("car_brand"));
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbConn.close(conn, pstmt, rs);
		}
		return list;
	}

	@Override
	public List<String> searchPowers() {
		List<String> list = new ArrayList<String>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DBConnection dbConn = DBConnection.getInstance();
		try {
			conn = dbConn.getConnection();
			String sql = "select distinct car_power from carz_car order by convert(car_power using gbk)";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if (rs != null) {
				while (rs.next()) {
					list.add(rs.getString("car_power"));
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbConn.close(conn, pstmt, rs);
		}
		return list;
	}

	@Override
	public List<String> searchModels() {
		List<String> list = new ArrayList<String>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DBConnection dbConn = DBConnection.getInstance();
		try {
			conn = dbConn.getConnection();
			String sql = "select distinct car_model from carz_car order by convert(car_model using gbk)";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if (rs != null) {
				while (rs.next()) {
					list.add(rs.getString("car_model"));
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbConn.close(conn, pstmt, rs);
		}
		return list;
	}

	@Override
	public List<String> searchTypes() {
		List<String> list = new ArrayList<String>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DBConnection dbConn = DBConnection.getInstance();
		try {
			conn = dbConn.getConnection();
			String sql = "select distinct car_type from carz_car order by convert(car_type using gbk)";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if (rs != null) {
				while (rs.next()) {
					list.add(rs.getString("car_type"));
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbConn.close(conn, pstmt, rs);
		}
		return list;
	}
	public String findBrandByComId(int comId) {
		String brand = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DBConnection dbConn = DBConnection.getInstance();
		try {
			conn = dbConn.getConnection();
			String sql = "select car_brand from carz_car where car_id = ( select car_id from\r\n"
					+ " carz_commodity where com_id = ?);";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, comId);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				brand = rs.getString("car_brand");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbConn.close(conn, pstmt, rs);
		}
		return brand;
	}

	// public List<CarPO> searchCurrPageCars(int currPageNo, int number, String
	// keyword) {
	// List<CarPO> foodList = null;
	// Connection conn = null;
	// PreparedStatement pstmt = null;
	// ResultSet rs = null;
	// DBConnection dbConn = DBConnection.getInstance();
	// try {
	// conn = dbConn.getConnection();
	// String sql = "select * from carz_car";
	// // 判断是否有查询条件，如果有，就在sql后添加where语句
	// if (keyword != null && !(keyword = keyword.trim()).equals("")) {
	// sql += " where fd_name like ?";
	// }
	// sql += " limit ?,?";
	//
	// pstmt = conn.prepareStatement(sql);
	// currPageNo--;
	// // 判断是否有条件，设置占位符信息
	// if (keyword != null && !keyword.equals("")) {
	// pstmt.setString(1, keyword);
	// pstmt.setInt(2, currPageNo * number);
	// pstmt.setInt(3, number);
	// } else {
	// pstmt.setInt(1, currPageNo * number);
	// pstmt.setInt(2, number);
	// }
	// rs = pstmt.executeQuery();
	// if (rs != null) {
	// foodList = new ArrayList<CarPO>();
	// // initialVector(rs, list);
	// foodList = ResultSet2ListUtil.putResult(rs, CarPO.class);
	// }
	//
	// } catch (Exception e) {
	// e.printStackTrace();
	// } finally {
	// dbConn.close(conn, pstmt, rs);
	// }
	// return foodList;
	// }

}
