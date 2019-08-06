package carz.service;

import java.util.List;

import carz.po.UserPO;
import carz.vo.BuyOrderVO;
import carz.vo.SellVO;

public interface IUserService {
	public List<UserPO> findAllUsers();
	public UserPO findByEmail(String email);
	boolean regist(UserPO user);
	public List<SellVO> findAllSellOrderById(int currPageNo, int id);
	public List<BuyOrderVO> findAllBuyOrderByStateService(int currPageNo , int state);
}
