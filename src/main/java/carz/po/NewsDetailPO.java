package carz.po;

import java.util.Date;

public class NewsDetailPO {
	private int newsDetailId;
	private String newsDetailPicurl1;
	private String newsDetailPicurl2;
	private String newsDetailPicurl3;
	private String newsDetailPicurl4;
	private String newsDetailUploader;
	private int newsDetailDiscusscount;
	private int newsDetailLikecount;
	private String newsDetailContent;
	public NewsDetailPO() {
		super();
	}
	public NewsDetailPO(int newsDetailId, String newsDetailPicurl1, String newsDetailPicurl2, String newsDetailPicurl3,
			String newsDetailPicurl4, String newsDetailUploader, int newsDetailDiscusscount, int newsDetailLikecount,
			String newsDetailContent) {
		super();
		this.newsDetailId = newsDetailId;
		this.newsDetailPicurl1 = newsDetailPicurl1;
		this.newsDetailPicurl2 = newsDetailPicurl2;
		this.newsDetailPicurl3 = newsDetailPicurl3;
		this.newsDetailPicurl4 = newsDetailPicurl4;
		this.newsDetailUploader = newsDetailUploader;
		this.newsDetailDiscusscount = newsDetailDiscusscount;
		this.newsDetailLikecount = newsDetailLikecount;
		this.newsDetailContent = newsDetailContent;
	}
	public int getNewsDetailId() {
		return newsDetailId;
	}
	public void setNewsDetailId(int newsDetailId) {
		this.newsDetailId = newsDetailId;
	}
	public String getNewsDetailPicurl1() {
		return newsDetailPicurl1;
	}
	public void setNewsDetailPicurl1(String newsDetailPicurl1) {
		this.newsDetailPicurl1 = newsDetailPicurl1;
	}
	public String getNewsDetailPicurl2() {
		return newsDetailPicurl2;
	}
	public void setNewsDetailPicurl2(String newsDetailPicurl2) {
		this.newsDetailPicurl2 = newsDetailPicurl2;
	}
	public String getNewsDetailPicurl3() {
		return newsDetailPicurl3;
	}
	public void setNewsDetailPicurl3(String newsDetailPicurl3) {
		this.newsDetailPicurl3 = newsDetailPicurl3;
	}
	public String getNewsDetailPicurl4() {
		return newsDetailPicurl4;
	}
	public void setNewsDetailPicurl4(String newsDetailPicurl4) {
		this.newsDetailPicurl4 = newsDetailPicurl4;
	}
	public String getNewsDetailUploader() {
		return newsDetailUploader;
	}
	public void setNewsDetailUploader(String newsDetailUploader) {
		this.newsDetailUploader = newsDetailUploader;
	}
	public int getNewsDetailDiscusscount() {
		return newsDetailDiscusscount;
	}
	public void setNewsDetailDiscusscount(int newsDetailDiscusscount) {
		this.newsDetailDiscusscount = newsDetailDiscusscount;
	}
	public int getNewsDetailLikecount() {
		return newsDetailLikecount;
	}
	public void setNewsDetailLikecount(int newsDetailLikecount) {
		this.newsDetailLikecount = newsDetailLikecount;
	}
	public String getNewsDetailContent() {
		return newsDetailContent;
	}
	public void setNewsDetailContent(String newsDetailContent) {
		this.newsDetailContent = newsDetailContent;
	}
	@Override
	public String toString() {
		return "NewsDetailPO [newsDetailId=" + newsDetailId + ", newsDetailPicurl1=" + newsDetailPicurl1
				+ ", newsDetailPicurl2=" + newsDetailPicurl2 + ", newsDetailPicurl3=" + newsDetailPicurl3
				+ ", newsDetailPicurl4=" + newsDetailPicurl4 + ", newsDetailUploader=" + newsDetailUploader
				+ ", newsDetailDiscusscount=" + newsDetailDiscusscount + ", newsDetailLikecount=" + newsDetailLikecount
				+ ", newsDetailContent=" + newsDetailContent + "]";
	}
	
}
