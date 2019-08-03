package carz.po;

public class CarPO {
	private int carId;
	private String carBrand;
	private String carModel;
	private double carPrice;
	private String carType;
	private String carPower;
	private String carGear;
	private String carEffc;
	private String carFeature;
	private String carSpec;
	public CarPO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CarPO(int carId, String carBrand, String carModel, double carPrice,
			String carType, String carPower, String carGear, String carEffc,
			String carFeature, String carSpec) {
		super();
		this.carId = carId;
		this.carBrand = carBrand;
		this.carModel = carModel;
		this.carPrice = carPrice;
		this.carType = carType;
		this.carPower = carPower;
		this.carGear = carGear;
		this.carEffc = carEffc;
		this.carFeature = carFeature;
		this.carSpec = carSpec;
	}
	@Override
	public String toString() {
		return "CarPO [carId=" + carId + ", carBrand=" + carBrand
				+ ", carModel=" + carModel + ", carPrice=" + carPrice
				+ ", carType=" + carType + ", carPower=" + carPower
				+ ", carGear=" + carGear + ", carEffc=" + carEffc
				+ ", carFeature=" + carFeature + ", carSpec=" + carSpec + "]";
	}
	public int getCarId() {
		return carId;
	}
	public void setCarId(int carId) {
		this.carId = carId;
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
	public double getCarPrice() {
		return carPrice;
	}
	public void setCarPrice(double carPrice) {
		this.carPrice = carPrice;
	}
	public String getCarType() {
		return carType;
	}
	public void setCarType(String carType) {
		this.carType = carType;
	}
	public String getCarPower() {
		return carPower;
	}
	public void setCarPower(String carPower) {
		this.carPower = carPower;
	}
	public String getCarGear() {
		return carGear;
	}
	public void setCarGear(String carGear) {
		this.carGear = carGear;
	}
	public String getCarEffc() {
		return carEffc;
	}
	public void setCarEffc(String carEffc) {
		this.carEffc = carEffc;
	}
	public String getCarFeature() {
		return carFeature;
	}
	public void setCarFeature(String carFeature) {
		this.carFeature = carFeature;
	}
	public String getCarSpec() {
		return carSpec;
	}
	public void setCarSpec(String carSpec) {
		this.carSpec = carSpec;
	}

}
