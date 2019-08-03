package carz.po;

public class UserPO {
	private int userId;
	private String userName;
	private String userPassword;
	private String userAddress;
	private String userEmail;
	private String userPhone;
	public UserPO() {
		super();

	}
	public UserPO(String userName, String userPassword, String email) {
		super();
		this.userName = userName;
		this.userPassword = userPassword;
		this.userEmail = email;
	}
	public UserPO(int userId, String userName, String userPassword,
			String userAddress, String userEmail, String userPhone) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.userPassword = userPassword;
		this.userAddress = userAddress;
		this.userEmail = userEmail;
		this.userPhone = userPhone;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getUserAddress() {
		return userAddress;
	}
	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	@Override
	public String toString() {
		return "UserPO [userId=" + userId + ", userName=" + userName
				+ ", userPassword=" + userPassword + ", userAddress="
				+ userAddress + ", userEmail=" + userEmail + ", userPhone="
				+ userPhone + "]";
	}
	
}
