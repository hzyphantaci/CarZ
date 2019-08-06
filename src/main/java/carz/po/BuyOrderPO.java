package carz.po;

import java.util.Date;

public class BuyOrderPO {
	private int buyId;
	private String buyCode;
	private int comId;
	private int userId;
	private int buyConcactWay;
	private String buyConcactAddress;
	private Date buyDate;
	private Date buyAppointmentTime;
	private int buyState;
	public BuyOrderPO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public BuyOrderPO(int buyId, String buyCode, int comId, int userId, int buyConcactWay, String buyConcactAddress,
			Date buyDate, Date buyAppointmentime, int buyState) {
		super();
		this.buyId = buyId;
		this.buyCode = buyCode;
		this.comId = comId;
		this.userId = userId;
		this.buyConcactWay = buyConcactWay;
		this.buyConcactAddress = buyConcactAddress;
		this.buyDate = buyDate;
		this.buyAppointmentTime = buyAppointmentTime;
		this.buyState = buyState;
	}
	public int getBuyId() {
		return buyId;
	}
	public void setBuyId(int buyId) {
		this.buyId = buyId;
	}
	public String getBuyCode() {
		return buyCode;
	}
	public void setBuyCode(String buyCode) {
		this.buyCode = buyCode;
	}
	public int getComId() {
		return comId;
	}
	public void setComId(int comId) {
		this.comId = comId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getBuyConcactWay() {
		return buyConcactWay;
	}
	public void setBuyConcactWay(int buyConcactWay) {
		this.buyConcactWay = buyConcactWay;
	}
	public String getBuyConcactAddress() {
		return buyConcactAddress;
	}
	public void setBuyConcactAddress(String buyConcactAddress) {
		this.buyConcactAddress = buyConcactAddress;
	}
	public Date getBuyDate() {
		return buyDate;
	}
	public void setBuyDate(Date date) {
		this.buyDate = date;
	}
	public Date getBuyAppointmentTime() {
		return buyAppointmentTime;
	}
	public void setBuyAppointmentTime(Date buyAppointmentTime) {
		this.buyAppointmentTime = buyAppointmentTime;
	}
	public int getBuyState() {
		return buyState;
	}
	public void setBuyState(int buyState) {
		this.buyState = buyState;
	}
	 
	public String toString() {
		return "BuyOrderPO [buyId=" + buyId + ", buyCode=" + buyCode + ", comId=" + comId + ", userId=" + userId
				+ ", buyConcactWay=" + buyConcactWay + ", buyConcactAddress=" + buyConcactAddress + ", buyDate="
				+ buyDate + ", buyAppointmentime=" + buyAppointmentTime + ", buyState=" + buyState + "]";
	}
	
}
