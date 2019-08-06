package carz.po;

public class PicPO {
	private int picId;
	private int carId;
	private int comId;
	private int newsId;
	private String picUrl;
	private int picType;
	public PicPO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public PicPO(int picId, int carId, int comId, int newsId,String picUrl, int picType) {
		super();
		this.picId = picId;
		this.carId = carId;
		this.comId = comId;
		this.newsId=newsId;
		this.picUrl = picUrl;
		this.picType = picType;
	}
	@Override
	public String toString() {
		return "PicPO [picId=" + picId + ", carId=" + carId + ", comId=" + comId
				+ ", picSrc=" + picUrl + ", picType=" + picType + "]";
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
	public int getNewsId() {
		return newsId;
	}
	public void setNewsId(int newsId) {
		this.newsId = newsId;
	}

	public String getPicUrl() {
		return picUrl;
	}
	public void setPicUrl(String picUrl) {
		this.picUrl = picUrl;
	}
	public int getPicType() {
		return picType;
	}
	public void setPicType(int picType) {
		this.picType = picType;
	}

}
