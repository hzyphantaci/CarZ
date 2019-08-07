package carz.vo;

import java.util.Date;
import java.util.List;

import carz.po.CarPO;
import carz.po.CommodityPO;
import carz.po.StatusPO;

/**
 * @author user
 *
 */
public class CommodityVO extends CommodityPO{
	private CarVO carVO;
	private CommodityPO comPo;
	private StatusPO statusPO;
	private String listPicUrl;
	private List<String> goodsPicUrl;
	public CommodityPO getComPo() {
		return comPo;
	}
	public void setStatusPO(StatusPO statusPO) {
		this.statusPO=statusPO;
	}
	public void setComPo(CommodityPO comPo) {
		this.comPo = comPo;
	}
	public void setCarPo(CarVO carVO) {
		this.carVO = carVO;
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
		return comPo.getComId();
	}
	@Override
	public int getCarId() {
		// TODO Auto-generated method stub
		return comPo.getCarId();
	}
	@Override
	public int getComState() {
		// TODO Auto-generated method stub
		return comPo.getComState();
	}
	@Override
	public Double getComPrice() {
		// TODO Auto-generated method stub
		return comPo.getComPrice();
	}
	@Override
	public Date getComDate() {
		// TODO Auto-generated method stub
		return comPo.getComDate();
	}
	@Override
	public Double getComMileage() {
		// TODO Auto-generated method stub
		return comPo.getComMileage();
	}
	@Override
	public String getComColor() {
		// TODO Auto-generated method stub
		return comPo.getComColor();
	}
	@Override
	public String getComAddress() {
		// TODO Auto-generated method stub
		return comPo.getComAddress();
	}
	@Override
	public String getComLicenseAddress() {
		// TODO Auto-generated method stub
		return comPo.getComLicenseAddress();
	}
	@Override
	public double getComInsurance() {
		// TODO Auto-generated method stub
		return comPo.getComInsurance();
	}
	@Override
	public double getComTax() {
		// TODO Auto-generated method stub
		return comPo.getComTax();
	}
	@Override
	public String getComCarid() {
		// TODO Auto-generated method stub
		return comPo.getComCarid();
	}
	@Override
	public Date getComUpdateTime() {
		// TODO Auto-generated method stub
		return comPo.getComUpdateTime();
	}
	@Override
	public int getComStatus() {
		// TODO Auto-generated method stub
		return comPo.getComStatus();
	}
		
	public String getCarBrand() {
		// TODO Auto-generated method stub
		return carVO.getCarBrand();
	}

	public String getCarModel() {
		// TODO Auto-generated method stub
		return carVO.getCarModel();
	}

	public double getCarPrice() {
		// TODO Auto-generated method stub
		return carVO.getCarPrice();
	}

	public String getCarType() {
		// TODO Auto-generated method stub
		return carVO.getCarType();
	}

	public String getCarPower() {
		// TODO Auto-generated method stub
		return carVO.getCarPower();
	}

	public String getCarGear() {
		// TODO Auto-generated method stub
		return carVO.getCarGear();
	}

	public String getCarEffc() {
		// TODO Auto-generated method stub
		return carVO.getCarEffc();
	}
	
	public String getCarFeature() {
		// TODO Auto-generated method stub
		return carVO.getCarFeature();
	}
	
	public String getCarSpec() {
		// TODO Auto-generated method stub
		return carVO.getCarSpec();
	}
	
	public String getStatusEngine() {
		return statusPO.getStatusEngine();
	}
	public String getStatusFacade() {
		return statusPO.getStatusFacade();
	}
	public String getStatusAc() {
		return statusPO.getStatusAc();
	}
	public String getStatusInside() {
		return statusPO.getStatusInside();
	}
	public String getStatusBrake() {
		return statusPO.getStatusBrake();
	}
	public String getStatusElectricals() {
		return statusPO.getStatusElectricals();
	}
	public String getStatusTyre() {
		return statusPO.getStatusTyre();
	}
	public String getStatusCell() {
		return statusPO.getStatusCell();
	}
	public String getStatusSeat() {
		return statusPO.getStatusSeat();
	}
	public String getStatusAll() {
		return statusPO.getStatusAll();
	}

}
