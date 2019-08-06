package carz.service.impl;

import java.util.ArrayList;
import java.util.List;

import carz.dao.DAOFactory;
import carz.dao.ICarDAO;
import carz.dao.ISellDAO;
import carz.dao.IUserDAO;
import carz.dao.impl.UserDAOImpl;
import carz.po.CarPO;
import carz.po.PicPO;
import carz.po.SellPO;
import carz.service.ISellService;
import carz.vo.CarVO;
import carz.vo.SellVO;

public class SellServiceImpl implements ISellService {
	private ISellDAO sellDAO = DAOFactory.buildDAOFactory().createSellDAO();
	private IUserDAO userDAO = DAOFactory.buildDAOFactory().createUserDAO();
	private ICarDAO carDAO = DAOFactory.buildDAOFactory().createCarDAO();
	
	public List<SellVO> searchSells(int currPageNo, int state) {
		List<SellVO> selllist = null;
		int sumCount = this.sellDAO.findCount(state);
		//计算总页码数
		int pageNumber = sumCount / 6 ;//每页显示6个
		if(sumCount % 6 != 0) {
			pageNumber++;
		}
		//调整当前有效页码
		if(currPageNo <= 0) {
			currPageNo = 0;
		}else if(currPageNo >= pageNumber) {
			currPageNo = pageNumber;
		}
		List<SellPO> sellPOList = this.sellDAO.findSellByState(currPageNo, 6, state);
		selllist = new ArrayList<SellVO>();

		for(SellPO p : sellPOList) {
			SellVO vo = new SellVO(p);
			String userName=userDAO.findUserNameById(p.getUserId());
			vo.setUserName(userName);
			vo.setCarName(carDAO.findCarNameById(p.getCarId()));
			vo.setState(sellDAO.findStateByState(p.getSellState()));
			vo.setSellDate(sellDAO.findSellDateBySellId(p.getSellId()));
			selllist.add(vo);
		}
		return selllist;
	}

}
