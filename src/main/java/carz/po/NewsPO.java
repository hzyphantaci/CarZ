package carz.po;

public class NewsPO {
	private int newsCarId;
	private String newsPicurl;
	private String newsCarName;
	private String newsUploader	;
	private int newsCarDiscusscount;
	private int newsCarLikecount;
	private String newsCarContent;
	public NewsPO() {
		super();
	}
	public NewsPO(int newsCarId, String newsPicurl, String newsCarName, String newsUploader, int newsCarDiscusscount,
			int newsCarLikecount, String newsCarContent) {
		super();
		this.newsCarId = newsCarId;
		this.newsPicurl = newsPicurl;
		this.newsCarName = newsCarName;
		this.newsUploader = newsUploader;
		this.newsCarDiscusscount = newsCarDiscusscount;
		this.newsCarLikecount = newsCarLikecount;
		this.newsCarContent = newsCarContent;
	}
	public int getNewsCarId() {
		return newsCarId;
	}
	public void setNewsCarId(int newsCarId) {
		this.newsCarId = newsCarId;
	}
	public String getNewsPicurl() {
		return newsPicurl;
	}
	public void setNewsPicurl(String newsPicurl) {
		this.newsPicurl = newsPicurl;
	}
	public String getNewsCarName() {
		return newsCarName;
	}
	public void setNewsCarName(String newsCarName) {
		this.newsCarName = newsCarName;
	}
	public String getNewsUploader() {
		return newsUploader;
	}
	public void setNewsUploader(String newsUploader) {
		this.newsUploader = newsUploader;
	}
	public int getNewsCarDiscusscount() {
		return newsCarDiscusscount;
	}
	public void setNewsCarDiscusscount(int newsCarDiscusscount) {
		this.newsCarDiscusscount = newsCarDiscusscount;
	}
	public int getNewsCarLikecount() {
		return newsCarLikecount;
	}
	public void setNewsCarLikecount(int newsCarLikecount) {
		this.newsCarLikecount = newsCarLikecount;
	}
	public String getNewsCarContent() {
		return newsCarContent;
	}
	public void setNewsCarContent(String newsCarContent) {
		this.newsCarContent = newsCarContent;
	}
	@Override
	public String toString() {
		return "NewsPO [newsCarId=" + newsCarId + ", newsPicurl=" + newsPicurl + ", newsCarName=" + newsCarName
				+ ", newsUploader=" + newsUploader + ", newsCarDiscusscount=" + newsCarDiscusscount
				+ ", newsCarLikecount=" + newsCarLikecount + ", newsCarContent=" + newsCarContent + "]";
	}
	
}
