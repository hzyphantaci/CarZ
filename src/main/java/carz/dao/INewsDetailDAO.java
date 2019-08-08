package carz.dao;

import java.util.List;

import carz.po.NewsDetailPO;


public interface INewsDetailDAO {
	public List<NewsDetailPO> findAllDetailNews(int detailId);
}
