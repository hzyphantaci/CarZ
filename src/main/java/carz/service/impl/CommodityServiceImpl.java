package carz.service.impl;

import java.util.ArrayList;
import java.util.List;

import carz.dao.DAOFactory;
import carz.dao.IComDAO;
import carz.dao.IPictureDAO;
import carz.dao.IStatusDAO;
import carz.po.CarPO;
import carz.po.CommodityPO;
import carz.po.PicPO;
import carz.service.ICarService;
import carz.service.ICommodityService;
import carz.service.ServiceFactory;
import carz.vo.CarVO;
import carz.vo.CommodityVO;

public class CommodityServiceImpl implements ICommodityService {
	private IComDAO comDAO = DAOFactory.buildDAOFactory().createCommodityDAO();
	private IStatusDAO statusDAO = DAOFactory.buildDAOFactory().createStatusDAO();
	private IPictureDAO picDAO = DAOFactory.buildDAOFactory().createPictureDAO();
	private ICarService carService = ServiceFactory.buildFactory().createCarService();
	@Override
	public List<CommodityVO> findByBrandAndBudget(String brand, String budget,
			int currPageNo) {
		return null;
	}
	@Override
	public List<CommodityVO> findByAll(String currPageNoStr, String address,
			String[] brand, String budgetStr, String[] type, String color,
			String power, String gear, String stateStr) {
		int currPageNo = 1;
		if(currPageNoStr!=null&&!"null".equals(budgetStr))
			currPageNo=Integer.parseInt(currPageNoStr);
		Double budget = 0.0;
		if (budgetStr != null && !"".equals(budgetStr) &&!"all".equals(budgetStr)) {
			if("more".equals(budgetStr))
				budget=-1.0;
			else
				budget=Double.parseDouble(budgetStr);
		}
		int state= 0;
		if ("新车".equals(stateStr)) {
			state=1;
		}else if("二手车".equals(stateStr)) {
			state=2;
		}
		int pageNumber = this.findPageCountByAll(currPageNoStr, address,brand, budgetStr, type,color,power, gear,stateStr);
		if (currPageNo <= 0) {
			currPageNo = 1;
		} else if (currPageNo >= pageNumber) {
			currPageNo = pageNumber;
		}
		List<CommodityVO> voList = new ArrayList<CommodityVO>();
		//System.out.println("serviceCurrPageNo:"+currPageNo);
		List<CommodityPO> poList = comDAO.findByAll(currPageNo, address, brand, budget, type, null,power,gear,state);
		for(CommodityPO po:poList) {
			CommodityVO vo = new CommodityVO();
			vo.setComPo(po);
			vo.setListPicUrl(picDAO.findPicturesByComId(po.getComId(), 2).get(0).getPicUrl());
			vo.setCarPo(carService.searchCarById(po.getCarId()));
			voList.add(vo);
		}
		return voList;
	}
	@Override
	public int findPageCountByAll(String currPageNoStr, String address,
			String[] brand, String budgetStr, String[] type, String color,
			String power, String gear, String stateStr) {
		Double budget = 0.0;
		if (budgetStr != null && !"".equals(budgetStr) &&!"all".equals(budgetStr)) {
			if("all".equals(budgetStr))
				budget=-1.0;
			else
				budget=Double.parseDouble(budgetStr);
		}
		int state= 0;
		if ("新车".equals(stateStr)) {
			state=1;
		}else if("二手车".equals(stateStr)) {
			state=2;
		}
		int sumCount = this.comDAO.comCountByAll(0, address, brand, budget, type, null,power,gear,state);
		int pageNumber = sumCount / 6;
		if (sumCount % 6 != 0) {
			pageNumber++;
		}
		return pageNumber;
	}
	@Override
	public CommodityVO findByComId(int comId) {
		CommodityPO po= comDAO.findById(comId);
		CommodityVO vo = new CommodityVO();
		vo.setComPo(po);
		vo.setListPicUrl(picDAO.findPicturesByComId(po.getComId(), 2).get(0).getPicUrl());
		vo.setCarPo(carService.searchCarById(po.getCarId()));
		if(po.getComState()==2) {
			vo.setStatusPO(statusDAO.findStatusByComId(comId));
		}
		return vo;
	}

}
