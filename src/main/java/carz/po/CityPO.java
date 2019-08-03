package carz.po;

public class CityPO {
    private int cityId;
    private String cityAddress;
    private String cityUrl;
	public CityPO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CityPO(int cityId, String cityAddress, String cityUrl) {
		super();
		this.cityId = cityId;
		this.cityAddress = cityAddress;
		this.cityUrl = cityUrl;
	}
	@Override
	public String toString() {
		return "CityPO [cityId=" + cityId + ", cityAddress=" + cityAddress
				+ ", cityUrl=" + cityUrl + "]";
	}
	public int getCityId() {
		return cityId;
	}
	public void setCityId(int cityId) {
		this.cityId = cityId;
	}
	public String getCityAddress() {
		return cityAddress;
	}
	public void setCityAddress(String cityAddress) {
		this.cityAddress = cityAddress;
	}
	public String getCityUrl() {
		return cityUrl;
	}
	public void setCityUrl(String cityUrl) {
		this.cityUrl = cityUrl;
	}
}
