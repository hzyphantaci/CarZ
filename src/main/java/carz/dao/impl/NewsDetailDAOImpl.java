package carz.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import carz.dao.INewsDetailDAO;
import carz.db.DBConnection;
import carz.po.CommodityPO;
import carz.po.NewsDetailPO;
import carz.util.ResultSet2ListUtil;

public class NewsDetailDAOImpl implements INewsDetailDAO {

	public List<NewsDetailPO> findAllDetailNews(int detailId) {
		List<NewsDetailPO> list = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DBConnection dbConn = DBConnection.getInstance();
		try {
			conn = dbConn.getConnection();
			String sql = "select * from carz_detailnews where news_detail_id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, detailId);
			rs = pstmt.executeQuery();
			if (rs != null) {
				list = new ArrayList<NewsDetailPO>();
				list = ResultSet2ListUtil.putResult(rs, NewsDetailPO.class);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbConn.close(conn, pstmt, rs);
		}
		return list;
	}

}
