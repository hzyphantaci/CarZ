package carz.vo;

import java.util.Date;

import carz.po.SellPO;

public class SellVO extends SellPO {
	private SellPO sellPO;
	private String userName;
	private String carName;
	private String state;
	private String carBrand;
	public SellVO(SellPO sellPO) {
		this.sellPO = sellPO;
	}
	

	public int getSellId() {
		// TODO Auto-generated method stub
		return sellPO.getSellId();
	}

	public String getSellCode() {
		// TODO Auto-generated method stub
		return sellPO.getSellCode();
	}

	public int getCarId() {
		// TODO Auto-generated method stub
		return sellPO.getCarId();
	}

	public int getUserId() {
		// TODO Auto-generated method stub
		return sellPO.getUserId();
	}

	public int getSellConcactWay() {
		// TODO Auto-generated method stub
		return sellPO.getSellConcactWay();
	}

	public String getSellConcactAddres() {
		// TODO Auto-generated method stub
		return sellPO.getSellConcactAddress();
	}

	public Date getSellDate() {
		// TODO Auto-generated method stub
		return sellPO.getSellDate();
	}
	
	public int getSellState() {
		// TODO Auto-generated method stub
		return sellPO.getSellState();
	}

	public SellPO getSellPO() {
		return sellPO;
	}


	public void setSellPO(SellPO sellPO) {
		this.sellPO = sellPO;
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
  
	public String toString() {
		return "SellVO [sellPO=" + sellPO + ", userName=" + userName + ", carName=" + carName + ", state=" + state
				+ ", carBrand=" + carBrand + "]";
	}


	public String getCarBrand() {
		return carBrand;
	}


	public void setCarBrand(String carBrand) {
		this.carBrand = carBrand;
	};
	
}
