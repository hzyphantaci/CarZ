package carz.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import carz.dao.IPictureDAO;
import carz.db.DBConnection;
import carz.po.PicPO;
import carz.util.ResultSet2ListUtil;

public class PictureDAOImpl implements IPictureDAO {

	public List<PicPO> findPicturesByComId(int comId, int picType) {
		List<PicPO> picList = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DBConnection dbConn = DBConnection.getInstance();
		try {
			conn = dbConn.getConnection();
			String sql = "select * from carz_picture where com_id=? and pic_type=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, comId);
			pstmt.setInt(2, picType);
			rs = pstmt.executeQuery();
			if(rs != null) {
				picList = new ArrayList<PicPO>();
				picList = ResultSet2ListUtil.putResult(rs, PicPO.class);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dbConn.close(conn, pstmt, rs);
		}
		return picList;
	}

	public List<PicPO> findPicturesByCarId(int carId, int picType) {
		List<PicPO> picList = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DBConnection dbConn = DBConnection.getInstance();
		try {
			conn = dbConn.getConnection();
			String sql = "select * from carz_picture where car_id=? and pic_type=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, carId);
			pstmt.setInt(2, picType);
			rs = pstmt.executeQuery();
			if(rs != null) {
				picList = new ArrayList<PicPO>();
				picList = ResultSet2ListUtil.putResult(rs, PicPO.class);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dbConn.close(conn, pstmt, rs);
		}
		return picList;
	}

}
