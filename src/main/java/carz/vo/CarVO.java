package carz.vo;

import java.util.List;

import carz.po.CarPO;

public class CarVO extends CarPO{
	private CarPO carPO;
	private String listPicUrl;
	private List<String> carPicUrl;
	private List<String> goodsPicUrl;
	private List<String> showPicUrl;
	public CarVO(CarPO carPo) {
		this.carPO = carPo;
	} 
	
	public CarPO getCarPo() {
		return carPO;
	}
	public void setCarPo(CarPO carPo) {
		this.carPO = carPo;
	}
	public String getListPicUrl() {
		return listPicUrl;
	}
	public void setListPicUrl(String listPicUrl) {
		this.listPicUrl = listPicUrl;
	}
	public List<String> getCarPicUrl() {
		return carPicUrl;
	}
	public void setCarPicUrl(List<String> carPicUrl) {
		this.carPicUrl = carPicUrl;
	}
	public List<String> getGoodsPicUrl() {
		return goodsPicUrl;
	}
	public void setGoodsPicUrl(List<String> goodsPicUrl) {
		this.goodsPicUrl = goodsPicUrl;
	}
	public List<String> getShowPicUrl() {
		return showPicUrl;
	}
	public void setShowPicUrl(List<String> showPicUrl) {
		this.showPicUrl = showPicUrl;
	}
	@Override
	public int getCarId() {
		// TODO Auto-generated method stub
		return carPO.getCarId();
	}
	@Override
	public String getCarBrand() {
		return carPO.getCarBrand();
	}
	@Override
	public String getCarModel() {
		// TODO Auto-generated method stub
		return carPO.getCarModel();
	}
	@Override
	public double getCarPrice() {
		// TODO Auto-generated method stub
		return carPO.getCarPrice();
	}
	@Override
	public String getCarType() {
		// TODO Auto-generated method stub
		return carPO.getCarType();
	}
	@Override
	public String getCarPower() {
		// TODO Auto-generated method stub
		return carPO.getCarPower();
	}
	@Override
	public String getCarGear() {
		// TODO Auto-generated method stub
		return carPO.getCarGear();
	}
	@Override
	public String getCarEffc() {
		// TODO Auto-generated method stub
		return carPO.getCarEffc();
	}
	@Override
	public String getCarFeature() {
		// TODO Auto-generated method stub
		return carPO.getCarFeature();
	}
	@Override
	public String getCarSpec() {
		// TODO Auto-generated method stub
		return carPO.getCarSpec();
	}
	
}
