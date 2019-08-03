package carz.po;

public class PicPO {
	private int picId;
	private int carId;
	private int comId;
	private String picSrc;
	private int picType;
	public PicPO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public PicPO(int picId, int carId, int comId, String picSrc, int picType) {
		super();
		this.picId = picId;
		this.carId = carId;
		this.comId = comId;
		this.picSrc = picSrc;
		this.picType = picType;
	}
	@Override
	public String toString() {
		return "PicPO [picId=" + picId + ", carId=" + carId + ", comId=" + comId
				+ ", picSrc=" + picSrc + ", picType=" + picType + "]";
	}
	public int getPicId() {
		return picId;
	}
	public void setPicId(int picId) {
		this.picId = picId;
	}
	public int getCarId() {
		return carId;
	}
	public void setCarId(int carId) {
		this.carId = carId;
	}
	public int getComId() {
		return comId;
	}
	public void setComId(int comId) {
		this.comId = comId;
	}
	public String getPicSrc() {
		return picSrc;
	}
	public void setPicSrc(String picSrc) {
		this.picSrc = picSrc;
	}
	public int getPicType() {
		return picType;
	}
	public void setPicType(int picType) {
		this.picType = picType;
	}

}
