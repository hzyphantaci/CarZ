package carz.dao;

import java.util.List;

import carz.po.CarPO;
import carz.po.NewsPO;

public interface INewsDAO {
	public List<NewsPO> findAllNews();
	public int findCount();
	public List<NewsPO> findByNewsPage(int currPageNo, int number) ;

}
