package carz.service.impl;

import java.util.ArrayList;
import java.util.List;

import carz.dao.DAOFactory;
import carz.dao.IComDAO;
import carz.dao.IPictureDAO;
import carz.po.CarPO;
import carz.po.PicPO;
import carz.service.ICommodityService;
import carz.vo.CarVO;
import carz.vo.CommodityVO;

public class CommodityServiceImpl implements ICommodityService {
	private IComDAO comDAO = DAOFactory.buildDAOFactory().createCommodityDAO();
	private IPictureDAO picDAO = DAOFactory.buildDAOFactory().createPictureDAO();
	@Override
	public List<CommodityVO> findByBrandAndBudget(String brand, String budget,
			int currPageNo) {
		return null;
	}

}
