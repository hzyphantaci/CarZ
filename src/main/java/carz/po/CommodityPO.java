package carz.po;

public class CommodityPO {
	private int comId;
	private int carId;
	private int comState;
	private Double comPrice;
	private long com_Date;
	private double comMileage;
	private String comColor;
	private String comAddress;
	private String comLicenseAddress;
	private double comInsurance;
	private double comTax;
	private String comCarid;
	private long comUpdateTime;
	private int comStatus;
	public CommodityPO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CommodityPO(int comId, int carId, int comState, Double comPrice,
			long com_Date, double comMileage, String comColor,
			String comAddress, String comLicenseAddress, double comInsurance,
			double comTax, String comCarid, long comUpdateTime, int comStatus) {
		super();
		this.comId = comId;
		this.carId = carId;
		this.comState = comState;
		this.comPrice = comPrice;
		this.com_Date = com_Date;
		this.comMileage = comMileage;
		this.comColor = comColor;
		this.comAddress = comAddress;
		this.comLicenseAddress = comLicenseAddress;
		this.comInsurance = comInsurance;
		this.comTax = comTax;
		this.comCarid = comCarid;
		this.comUpdateTime = comUpdateTime;
		this.comStatus = comStatus;
	}
	@Override
	public String toString() {
		return "CommodityPO [comId=" + comId + ", carId=" + carId
				+ ", comState=" + comState + ", comPrice=" + comPrice
				+ ", com_Date=" + com_Date + ", comMileage=" + comMileage
				+ ", comColor=" + comColor + ", comAddress=" + comAddress
				+ ", comLicenseAddress=" + comLicenseAddress + ", comInsurance="
				+ comInsurance + ", comTax=" + comTax + ", comCarid=" + comCarid
				+ ", comUpdateTime=" + comUpdateTime + ", comStatus="
				+ comStatus + "]";
	}
	public int getComId() {
		return comId;
	}
	public void setComId(int comId) {
		this.comId = comId;
	}
	public int getCarId() {
		return carId;
	}
	public void setCarId(int carId) {
		this.carId = carId;
	}
	public int getComState() {
		return comState;
	}
	public void setComState(int comState) {
		this.comState = comState;
	}
	public Double getComPrice() {
		return comPrice;
	}
	public void setComPrice(Double comPrice) {
		this.comPrice = comPrice;
	}
	public long getComDate() {
		return com_Date;
	}
	public void setComDate(long comDate) {
		this.com_Date = comDate;
	}
	public double getComMileage() {
		return comMileage;
	}
	public void setComMileage(double comMileage) {
		this.comMileage = comMileage;
	}
	public String getComColor() {
		return comColor;
	}
	public void setComColor(String comColor) {
		this.comColor = comColor;
	}
	public String getComAddress() {
		return comAddress;
	}
	public void setComAddress(String comAddress) {
		this.comAddress = comAddress;
	}
	public String getComLicenseAddress() {
		return comLicenseAddress;
	}
	public void setComLicenseAddress(String comLicenseAddress) {
		this.comLicenseAddress = comLicenseAddress;
	}
	public double getComInsurance() {
		return comInsurance;
	}
	public void setComInsurance(double comInsurance) {
		this.comInsurance = comInsurance;
	}
	public double getComTax() {
		return comTax;
	}
	public void setComTax(double comTax) {
		this.comTax = comTax;
	}
	public String getComCarid() {
		return comCarid;
	}
	public void setComCarid(String comCarid) {
		this.comCarid = comCarid;
	}
	public long getComUpdateTime() {
		return comUpdateTime;
	}
	public void setComUpdateTime(long comUpdateTime) {
		this.comUpdateTime = comUpdateTime;
	}
	public int getComStatus() {
		return comStatus;
	}
	public void setComStatus(int comStatus) {
		this.comStatus = comStatus;
	}

}
