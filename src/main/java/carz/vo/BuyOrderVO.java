package carz.vo;

import java.util.Date;

import carz.po.BuyOrderPO;

public class BuyOrderVO extends BuyOrderPO {
	private BuyOrderPO buyOrderPO;
	private String userName;
	private String carName;
	private String state;
	private String carBrand;
	public BuyOrderVO(BuyOrderPO buyOrderPO) {
		this.buyOrderPO = buyOrderPO;
	}
	
	
	public BuyOrderPO getBuyOrderPO() {
		return buyOrderPO;
	}
	public void setBuyOrderPO(BuyOrderPO buyOrderPO) {
		this.buyOrderPO = buyOrderPO;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getCarName() {
		return carName;
	}
	public void setCarName(String carName) {
		this.carName = carName;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	
	public int getBuyId() {
		// TODO Auto-generated method stub
		return buyOrderPO.getBuyId();
	}
	
	public String getBuyCode() {
		// TODO Auto-generated method stub
		return buyOrderPO.getBuyCode();
	}
	
	public int getComId() {
		// TODO Auto-generated method stub
		return buyOrderPO.getComId();
	}
	
	public int getUserId() {
		// TODO Auto-generated method stub
		return buyOrderPO.getUserId();
	}
	
	public int getBuyConcactWay() {
		// TODO Auto-generated method stub
		return buyOrderPO.getBuyConcactWay();
	}
	
	public String getBuyConcactAddress() {
		// TODO Auto-generated method stub
		return buyOrderPO.getBuyConcactAddress();
	}
	
	public Date getBuyDate() {
		// TODO Auto-generated method stub
		return buyOrderPO.getBuyDate();
	}
	
	public Date getBuyAppointmentime() {
		// TODO Auto-generated method stub
		return buyOrderPO.getBuyAppointmentTime();
	}
	
	public int getBuyState() {
		// TODO Auto-generated method stub
		return buyOrderPO.getBuyState();
	}
  
	public String toString() {
		return "BuyOrderVO [buyOrderPO=" + buyOrderPO + ", userName=" + userName + ", carName=" + carName + ", state="
				+ state + ", carBrand=" + carBrand + "]";
	}


	public String getCarBrand() {
		return carBrand;
	}


	public void setCarBrand(String carBrand) {
		this.carBrand = carBrand;
	}

	
}
