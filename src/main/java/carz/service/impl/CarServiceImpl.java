package carz.service.impl;

import java.util.ArrayList;
import java.util.List;

import carz.dao.DAOFactory;
import carz.dao.ICarDAO;
import carz.dao.IPictureDAO;
import carz.po.CarPO;
import carz.po.PicPO;
import carz.service.ICarService;
import carz.vo.CarVO;

public class CarServiceImpl implements ICarService {
	private IPictureDAO picDAO = DAOFactory.buildDAOFactory().createPictureDAO();
	private ICarDAO carDAO = DAOFactory.buildDAOFactory().createCarDAO();

	public List<CarVO> searchCarsByModel(int currPageNo, String keyword) {
		List<CarVO> carlist = null;
		int sumCount = this.carDAO.findCount(keyword);
		//计算总页码数
		int pageNumber = sumCount / 6 ;//每页显示6个
		if(sumCount % 6 != 0) {
			pageNumber++;
		}
		//调整当前有效页码
		if(currPageNo <= 0) {
			currPageNo = 1;
		}else if(currPageNo >= pageNumber) {
			currPageNo = pageNumber;
		}
		List<CarPO> carPOList = this.carDAO.findByCarModel(currPageNo, 6, keyword);
		carlist = new ArrayList<CarVO>();
		CarVO vo = null;
		for(CarPO p : carPOList) {
			vo = new CarVO(p);
			carlist.add(vo);
			List<PicPO> picList = this.picDAO.findPicturesByCarId(vo.getCarId(), 0);
			if (picList != null && picList.size() == 1) {
				vo.setListPicUrl(picList.get(0).getPicUrl());
			}					
		}	
		return carlist;
	}

	public CarVO searchCarById(int carId) {
		CarVO vo = null;
		CarPO po = this.carDAO.findById(carId);
		vo = new CarVO(po);
		List<PicPO> carPicturePO = this.picDAO.findPicturesByComId(carId, 1);//汽车图片 1
		if(carPicturePO != null) {
			List<String> carPictureUrlList = new ArrayList<String>();
			for(PicPO p : carPicturePO) {
				carPictureUrlList.add(p.getPicUrl());
			}
			vo.setCarPicUrl(carPictureUrlList);
		}
		carPicturePO = this.picDAO.findPicturesByComId(carId, 2);//商品图片 1
		if(carPicturePO != null) {
			List<String> carPictureUrlList = new ArrayList<String>();
			for(PicPO p : carPicturePO) {
				carPictureUrlList.add(p.getPicUrl());
			}
			vo.setGoodsPicUrl(carPictureUrlList);
		}
		carPicturePO = this.picDAO.findPicturesByComId(carId, 0);//展示图片 0
		if(carPicturePO != null) {
			List<String> carPictureUrlList = new ArrayList<String>();
			for(PicPO p : carPicturePO) {
				carPictureUrlList.add(p.getPicUrl());
			}
			vo.setShowPicUrl(carPictureUrlList);
		}
		return vo;
	}
	public List<String> searchBrands() {		
		return carDAO.searchBrands();
	}

	@Override
	public List<String> searchPowers() {
		return carDAO.searchPowers();
	}

	@Override
	public List<String> searchModels() {
		return carDAO.searchModels();
	}

	@Override
	public List<String> searchTypes() {
		return carDAO.searchTypes();
	}

}
