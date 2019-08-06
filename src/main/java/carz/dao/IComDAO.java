package carz.dao;

import java.util.List;

import carz.po.CommodityPO;

public interface IComDAO {
	public List<CommodityPO> findAllCom(int currPageNo);
	public CommodityPO findById(int id);
	public int findCount(String keyword);
	public List<CommodityPO> findByState(int currPageNo, int number, int str);// 新旧查询
	public List<CommodityPO> findByPrice(int currPageNo, int number,
			double str);// 大于定价查询
	public List<CommodityPO> findByColor(int currPageNo, int number,
			String str);// 颜色查询
	public List<CommodityPO> findByAddress(int currPageNo, int number,
			String str);// 所在地查询
	public List<CommodityPO> findBystatus(int currPageNo, int number, int str);// 状态查询
	public String findCarNameIdByComId(int id);
	public String findStateByState(int buyState);
	public List<CommodityPO> findByAll(int currPageNo, String address,
			String[] brand, Double budget,
			String[] model, String color, String power, String gear,
			int state);
	public int comCountByAll(int currPageNo, String address,
			String[] brand, Double budget,
			String[] model, String color, String power, String gear,
			int state);
}
