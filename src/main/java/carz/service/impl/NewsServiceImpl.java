package carz.service.impl;

import java.util.ArrayList;
import java.util.List;

import carz.dao.DAOFactory;
import carz.dao.INewsDAO;
import carz.po.CarPO;
import carz.po.NewsPO;
import carz.service.INewsService;

public class NewsServiceImpl implements INewsService {
	private INewsDAO newsDAO = DAOFactory.buildDAOFactory().createNewsDAO();
	
	public List<NewsPO> searchNews(int currPageNo) {
		List<NewsPO> list = null;
		int sumCount = newsDAO.findCount();
		int pageNumber = sumCount/4;//每页显示四个
		if(sumCount % 4 !=0) {
			pageNumber+=1;
		}
		if(currPageNo <= 0) {
			currPageNo = 1;
		}else if(currPageNo >= pageNumber) {
			currPageNo = pageNumber;
		}
		list = this.newsDAO.findByNewsPage(currPageNo, 4);
		return list;
	}
}
