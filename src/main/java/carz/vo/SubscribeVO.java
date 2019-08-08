package carz.vo;

import java.util.Date;

import carz.po.SubscribePO;

public class SubscribeVO extends SubscribePO {
	private SubscribePO subscribePO;
	private String userName;
	private String carBrand;
	private String carModel;
	

	public SubscribeVO(SubscribePO subscribePO) {
		this.subscribePO = subscribePO;
	}

	public SubscribePO getSubscribePO() {
		return subscribePO;
	}

	public void setSubscribePO(SubscribePO subscribePO) {
		this.subscribePO = subscribePO;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getCarBrand() {
		return carBrand;
	}

	public void setCarBrand(String carBrand) {
		this.carBrand = carBrand;
	}

	public String getCarModel() {
		return carModel;
	}

	public void setCarModel(String carModel) {
		this.carModel = carModel;
	} 
	public int getSubscribeId() {
		// TODO Auto-generated method stub
		return subscribePO.getSubscribeId();
	} 
	public int getUserId() {
		// TODO Auto-generated method stub
		return subscribePO.getUserId();
	} 
	public String getUserEmail() {
		// TODO Auto-generated method stub
		return subscribePO.getUserEmail();
	} 
	public int getCarId() {
		// TODO Auto-generated method stub
		return subscribePO.getCarId();
	} 
	public String getSubscribeUrl() {
		// TODO Auto-generated method stub
		return subscribePO.getSubscribeUrl();
	} 
	public Date getSubscribeDate() {
		// TODO Auto-generated method stub
		return subscribePO.getSubscribeDate();
	}
	public int getSubscribeState() {
		// TODO Auto-generated method stub
		return subscribePO.getSubscribeState();
	}
	public String toString() {
		return "SubscribeVO [subscribePO=" + subscribePO + ", userName=" + userName + ", carBrand=" + carBrand
				+ ", carModel=" + carModel + "]";
	}
	
	
}
