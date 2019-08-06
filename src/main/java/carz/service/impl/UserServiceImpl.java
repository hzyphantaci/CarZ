package carz.service.impl;

import java.util.ArrayList;
import java.util.List;

import carz.dao.DAOFactory;
import carz.dao.ICarDAO;
import carz.dao.IComDAO;
import carz.dao.ISellDAO;
import carz.dao.IUserDAO;
import carz.po.BuyOrderPO;
import carz.po.SellPO;
import carz.po.UserPO;
import carz.service.IUserService;
import carz.vo.BuyOrderVO;
import carz.vo.SellVO;

public class UserServiceImpl implements IUserService {
	private IUserDAO userDAO = DAOFactory.buildDAOFactory().createUserDAO();
	private ISellDAO sellDAO = DAOFactory.buildDAOFactory().createSellDAO();
	private ICarDAO carDAO = DAOFactory.buildDAOFactory().createCarDAO();
	private IComDAO comDAO = DAOFactory.buildDAOFactory().createCommodityDAO();
	@Override
	public List<UserPO> findAllUsers() {
		return userDAO.findAllUser();
	}

	@Override
	public boolean regist(UserPO user) {
		return userDAO.regist(user);
	}

	@Override
	public UserPO findByEmail(String email) {
		return userDAO.findByEmail(email);
	}
	public List<SellVO> findAllSellOrderById(int currPageNo, int id) {
		List<SellVO> selllist = null;
		int sumCount = this.sellDAO.findCount();
		// 计算总页码数
		int pageNumber = sumCount / 6;// 每页显示6个
		if (sumCount % 6 != 0) {
			pageNumber++;
		}
		// 调整当前有效页码
		if (currPageNo <= 0) {
			currPageNo = 0;
		} else if (currPageNo >= pageNumber) {
			currPageNo = pageNumber;
		}
		List<SellPO> sellPOList = this.userDAO.findAllSellOrderById(currPageNo,
				6, id);
		selllist = new ArrayList<SellVO>();

		for (SellPO p : sellPOList) {
			SellVO vo = new SellVO(p);
			String userName = userDAO.findUserNameById(p.getUserId());
			vo.setUserName(userName);
			vo.setCarName(carDAO.findCarNameById(p.getCarId()));
			vo.setState(sellDAO.findStateByState(p.getSellState()));
			vo.setCarBrand(sellDAO.findBrandByCarId(p.getCarId()));
			selllist.add(vo);
		}
		return selllist;
	}
	public List<BuyOrderVO> findAllBuyOrderByStateService(int currPageNo,
			int state) {
		List<BuyOrderVO> buylist = null;
		int sumCount = this.sellDAO.findCount();
		// 计算总页码数
		int pageNumber = sumCount / 6;// 每页显示6个
		if (sumCount % 6 != 0) {
			pageNumber++;
		}
		// 调整当前有效页码
		if (currPageNo <= 0) {
			currPageNo = 0;
		} else if (currPageNo >= pageNumber) {
			currPageNo = pageNumber;
		}
		List<BuyOrderPO> buyPOList = this.userDAO
				.findAllBuyOrderByState(currPageNo, 6, state);
		buylist = new ArrayList<BuyOrderVO>();
		for (BuyOrderPO p : buyPOList) {
			BuyOrderVO vo = new BuyOrderVO(p);
			String userName = userDAO.findUserNameById(p.getUserId());
			vo.setUserName(userName);
			vo.setCarName(comDAO.findCarNameIdByComId(p.getComId()));
			vo.setState(comDAO.findStateByState(p.getBuyState()));
			vo.setCarBrand(carDAO.findBrandByComId(p.getComId()));
			vo.setBuyDate(userDAO.findDateByBuyId(p.getUserId()));
			vo.setBuyAppointmentTime(
					userDAO.findAppointmentTimeByBuyId(p.getUserId()));
			System.out.println(vo.getBuyDate());
			buylist.add(vo);
		}
		return buylist;
	}

}
