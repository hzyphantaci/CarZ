package carz.dao;

import java.util.Date;
import java.util.List;

import carz.po.BuyOrderPO;
import carz.po.SellPO;
import carz.po.UserPO;

public interface IUserDAO {
    public List<UserPO> findAllUser();
    public boolean regist(UserPO user);
    public UserPO findByEmail(String email);
    public String findUserNameById(int id);
    public List<SellPO> findAllSellOrderById(int currPageNo, int number, int id);
    public List<BuyOrderPO> findAllBuyOrderByState(int currPageNo, int number, int state);
    public void update(String code);
    public Date findDateByBuyId(int id);
    public Date findAppointmentTimeByBuyId(int id);
    public List<UserPO> findAllEmail();
    public List<BuyOrderPO> findAllBuyOrderByStateAndId(int currPageNo, int number, int state,int id);
    public String findEmailById(int id); 
    public void addBuyOrder(String code , int comId , int userId , int buyConcactWay, 
	          String buyConcactAddress , String date , String appointmentTime);
}
