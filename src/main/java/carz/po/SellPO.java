package carz.po;

import java.util.Date;

public class SellPO {
	private int sellId;
	private String sellCode;
	private int carId;
	private int userId;
	private int sellConcactWay;
	private String sellConcactAddress;
	private String sellAddress;
	private Date sellDate;
	private int sellState;
	public SellPO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public SellPO(int sellId, String sellCode, int carId, int userId, int sellConcactWay, String sellConcactAddress,
			String sellAddress, Date sellDate, int sellState) {
		super();
		this.sellId = sellId;
		this.sellCode = sellCode;
		this.carId = carId;
		this.userId = userId;
		this.sellConcactWay = sellConcactWay;
		this.sellConcactAddress = sellConcactAddress;
		this.sellAddress = sellAddress;
		this.sellDate = sellDate;
		this.sellState = sellState;
	}

	public int getSellId() {
		return sellId;
	}
	public void setSellId(int sellId) {
		this.sellId = sellId;
	}
	public String getSellCode() {
		return sellCode;
	}
	public void setSellCode(String sellCode) {
		this.sellCode = sellCode;
	}
	public int getCarId() {
		return carId;
	}
	public void setCarId(int carId) {
		this.carId = carId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getSellConcactWay() {
		return sellConcactWay;
	}
	public void setSellConcactWay(int sellConcactWay) {
		this.sellConcactWay = sellConcactWay;
	}
	public String getSellConcactAddress() {
		return sellConcactAddress;
	}
	public void setSellConcactAddress(String sellConcactAddress) {
		this.sellConcactAddress = sellConcactAddress;
	}
	public int getSellState() {
		return sellState;
	}
	public void setSellState(int sellState) {
		this.sellState = sellState;
	}
	public Date getSellDate() {
		return sellDate;
	}
	public void setSellDate(Date sellDate) {
		this.sellDate = sellDate;
	}

	public String getSellAddress() {
		return sellAddress;
	}

	public void setSellAddress(String sellAddress) {
		this.sellAddress = sellAddress;
	}
	public String toString() {
		return "SellPO [sellId=" + sellId + ", sellCode=" + sellCode + ", carId=" + carId + ", userId=" + userId
				+ ", sellConcactWay=" + sellConcactWay + ", sellConcactAddress=" + sellConcactAddress + ", sellAddress="
				+ sellAddress + ", sellDate=" + sellDate + ", sellState=" + sellState + "]";
	}
}
