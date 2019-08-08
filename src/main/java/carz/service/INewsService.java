package carz.service;

import java.util.List;

import carz.po.NewsPO;
import carz.vo.CarVO;

public interface INewsService {
	public List<NewsPO> searchNews(int currPageNo);
	
}
