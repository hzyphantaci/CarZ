package carz.service;

import java.util.List;

import carz.po.UserPO;
import carz.vo.BuyOrderVO;
import carz.vo.SellVO;
import carz.vo.SubscribeVO;

public interface IUserService {
	public List<UserPO> findAllUsers();
	public UserPO findByEmail(String email);
	boolean regist(UserPO user);
	public List<SellVO> findAllSellOrderById(int currPageNo, int id);
	public List<BuyOrderVO> findAllBuyOrderByStateService(int currPageNo , int state);
	public List<BuyOrderVO> findAllBuyOrderByStateAndId(int currPageNo , int state , int id);
	public List<SubscribeVO> findAllSubscribeOrderByState(int currPageNo , int state);
	public List<SubscribeVO> findSubscribeOrderByEmail(int currPageNo ,String email);
	public List<SubscribeVO> findSubscribeOrderById(int currPageNo ,int id);
}
