package carz.service.impl;

import java.util.List;

import carz.dao.DAOFactory;
import carz.dao.INewsDetailDAO;
import carz.po.NewsDetailPO;
import carz.service.INewsDetailService;

public class NewsDetailServiceImpl implements INewsDetailService{
	private INewsDetailDAO detailNewsDAO =DAOFactory.buildDAOFactory().createNewsDetailDAO();
	public List<NewsDetailPO> findAllDetailNews(int detailId) {
		List<NewsDetailPO> list=null;
		list = detailNewsDAO.findAllDetailNews(detailId);
		return list;
	}
}
