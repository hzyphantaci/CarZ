package carz.service;

import java.util.List;

import carz.po.CommodityPO;
import carz.vo.CommodityVO;

public interface ICommodityService {
    public List<CommodityVO> findByBrandAndBudget(String brand,String budget,int currPageNo);
    public List<CommodityVO> findByAll(String currPageNoStr, String address,
			String[] brand, String budgetStr, String[] type, String color,
			String power, String gear, String stateStr);
    public int findPageCountByAll(String currPageNoStr, String address,
			String[] brand, String budgetStr, String[] type, String color,
			String power, String gear, String stateStr);
    public CommodityVO findByComId(int comId);
}
