package carz.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import carz.dao.IStatusDAO;
import carz.db.DBConnection;
import carz.po.CarPO;
import carz.po.CommodityPO;
import carz.po.StatusPO;
import carz.util.ResultSet2ListUtil;

public class StatusDAOImpl implements IStatusDAO {

	@Override
	public StatusPO findStatusByComId(int comId) {
		List<StatusPO> list = null;
		StatusPO po = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DBConnection dbConn = DBConnection.getInstance();
		try {
			conn = dbConn.getConnection();
			String sql = "select * from carz_status where com_id = ? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, comId);
			rs = pstmt.executeQuery();
			if (rs != null) {
				list = new ArrayList<StatusPO>();
				po = new StatusPO();
				po = ResultSet2ListUtil.putResult(rs, StatusPO.class)
						.get(0);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbConn.close(conn, pstmt, rs);
		}
		return po;
	}

}
