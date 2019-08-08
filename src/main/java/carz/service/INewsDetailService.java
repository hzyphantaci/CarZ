package carz.service;

import java.util.List;

import carz.po.NewsDetailPO;

public interface INewsDetailService {
	public List<NewsDetailPO> findAllDetailNews(int detailId);
}
