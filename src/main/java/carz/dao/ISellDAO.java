package carz.dao;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import carz.po.SellPO;
import carz.vo.SellVO;

public interface ISellDAO {
	public List<SellPO> findSellByState(int currPageNo, int number , int str);
	public String findCarNameById(int id);
	public int findCount(int keyword);
	public int findCount();
	public String findStateByState(int state);
	public void update(int id, int state);
	public String findBrandByCarId(int carId);
	public Date findSellDateBySellId(int id);
}
