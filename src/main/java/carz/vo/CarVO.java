package carz.vo;

import java.util.List;

import carz.po.CarPO;

public class CarVO extends CarPO{
	private CarPO carPo;
	private String listPicUrl;
	private List<String> carPicUrl;
	private List<String> goodsPicUrl;
	private List<String> showPicUrl;
	public CarVO(CarPO carPo) {
		this.carPo = carPo;
	} 
	
	public CarPO getCarPo() {
		return carPo;
	}
	public void setCarPo(CarPO carPo) {
		this.carPo = carPo;
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
		return super.getCarId();
	}
	@Override
	public String getCarBrand() {
		// TODO Auto-generated method stub
		return super.getCarBrand();
	}
	@Override
	public String getCarModel() {
		// TODO Auto-generated method stub
		return super.getCarModel();
	}
	@Override
	public double getCarPrice() {
		// TODO Auto-generated method stub
		return super.getCarPrice();
	}
	@Override
	public String getCarType() {
		// TODO Auto-generated method stub
		return super.getCarType();
	}
	@Override
	public String getCarPower() {
		// TODO Auto-generated method stub
		return super.getCarPower();
	}
	@Override
	public String getCarGear() {
		// TODO Auto-generated method stub
		return super.getCarGear();
	}
	@Override
	public String getCarEffc() {
		// TODO Auto-generated method stub
		return super.getCarEffc();
	}
	@Override
	public String getCarFeature() {
		// TODO Auto-generated method stub
		return super.getCarFeature();
	}
	@Override
	public String getCarSpec() {
		// TODO Auto-generated method stub
		return super.getCarSpec();
	}
	
}
