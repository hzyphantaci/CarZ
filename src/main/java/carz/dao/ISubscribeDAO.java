package carz.dao;

import java.util.Date;
import java.util.List;

import carz.po.SubscribePO;

public interface ISubscribeDAO {
	public List<SubscribePO> findAllSubscribeByState(int currPageNo, int number , int state);
	public List<SubscribePO> findSubscribeByEmail(int currPageNo, int number , String email);
	public void update(int state,int id);
	public void delete(int subscribeId);
	public void addSubscribe(int subscribeId,int userId , String email , int carId, String subscribeUrl ,String date , int state);
}