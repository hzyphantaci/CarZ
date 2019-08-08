package carz.po;

import java.util.Date;

public class SubscribePO {
	private int subscribeId;
	private int userId;
	private String userEmail;
	private int carId;
	private String subscribeUrl;
	private Date subscribeDate;
	private int subscribeState;
	public SubscribePO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public SubscribePO(int subscribeId, int userId, String userEmail, int carId, String subscribeUrl,
			Date subscribeDate) {
		super();
		this.subscribeId = subscribeId;
		this.userId = userId;
		this.userEmail = userEmail;
		this.carId = carId;
		this.subscribeUrl = subscribeUrl;
		this.subscribeDate = subscribeDate;
	}
	public int getSubscribeId() {
		return subscribeId;
	}
	public void setSubscribeId(int subscribeId) {
		this.subscribeId = subscribeId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public int getCarId() {
		return carId;
	}
	public void setCarId(int carId) {
		this.carId = carId;
	}
	public String getSubscribeUrl() {
		return subscribeUrl;
	}
	public void setSubscribeUrl(String subscribeUrl) {
		this.subscribeUrl = subscribeUrl;
	}
	public Date getSubscribeDate() {
		return subscribeDate;
	}
	public void setSubscribeDate(Date subscribeDate) {
		this.subscribeDate = subscribeDate;
	}
	public int getSubscribeState() {
		return subscribeState;
	}
	public void setSubscribeState(int subscribeState) {
		this.subscribeState = subscribeState;
	}
 
	public String toString() {
		return "SubscribePO [subscribeId=" + subscribeId + ", userId=" + userId + ", userEmail=" + userEmail
				+ ", carId=" + carId + ", subscribeUrl=" + subscribeUrl + ", subscribeDate=" + subscribeDate
				+ ", subscribeState=" + subscribeState + "]";
	}
	
	
}
