package carz.vo;

import java.util.List;

import carz.po.CommodityPO;

/**
 * @author user
 *
 */
public class CommodityVO extends CommodityPO{
	private CommodityPO carPo;
	private String listPicUrl;
	private List<String> goodsPicUrl;
	public CommodityPO getCarPo() {
		return carPo;
	}
	public void setCarPo(CommodityPO carPo) {
		this.carPo = carPo;
	}
	public String getListPicUrl() {
		return listPicUrl;
	}
	public void setListPicUrl(String listPicUrl) {
		this.listPicUrl = listPicUrl;
	}
	public List<String> getGoodsPicUrl() {
		return goodsPicUrl;
	}
	public void setGoodsPicUrl(List<String> goodsPicUrl) {
		this.goodsPicUrl = goodsPicUrl;
	}
	@Override
	public int getComId() {
		// TODO Auto-generated method stub
		return super.getComId();
	}
	@Override
	public int getCarId() {
		// TODO Auto-generated method stub
		return super.getCarId();
	}
	@Override
	public int getComState() {
		// TODO Auto-generated method stub
		return super.getComState();
	}
	@Override
	public Double getComPrice() {
		// TODO Auto-generated method stub
		return super.getComPrice();
	}
	@Override
	public long getComDate() {
		// TODO Auto-generated method stub
		return super.getComDate();
	}
	@Override
	public double getComMileage() {
		// TODO Auto-generated method stub
		return super.getComMileage();
	}
	@Override
	public String getComColor() {
		// TODO Auto-generated method stub
		return super.getComColor();
	}
	@Override
	public String getComAddress() {
		// TODO Auto-generated method stub
		return super.getComAddress();
	}
	@Override
	public String getComLicenseAddress() {
		// TODO Auto-generated method stub
		return super.getComLicenseAddress();
	}
	@Override
	public double getComInsurance() {
		// TODO Auto-generated method stub
		return super.getComInsurance();
	}
	@Override
	public double getComTax() {
		// TODO Auto-generated method stub
		return super.getComTax();
	}
	@Override
	public String getComCarid() {
		// TODO Auto-generated method stub
		return super.getComCarid();
	}
	@Override
	public long getComUpdateTime() {
		// TODO Auto-generated method stub
		return super.getComUpdateTime();
	}
	@Override
	public int getComStatus() {
		// TODO Auto-generated method stub
		return super.getComStatus();
	}
	
}
