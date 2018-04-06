package com.mpf.biz.model.portfolio;

import java.sql.Timestamp;
import java.util.List;

public class PortfolioVO {
	private int id;
	private int userId;
	private String mainTitle;
	private String mainImage;
	private String mainContent;
	private String videoLink;
	private Timestamp regDatetime;
	
	private List<SubImageVO> imageList;
	private List<PortfolioContentVO> portfolioContentList;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getMainTitle() {
		return mainTitle;
	}
	public void setMainTitle(String mainTitle) {
		this.mainTitle = mainTitle;
	}
	public String getMainImage() {
		return mainImage;
	}
	public void setMainImage(String mainImage) {
		this.mainImage = mainImage;
	}
	public String getMainContent() {
		return mainContent;
	}
	public void setMainContent(String mainContent) {
		this.mainContent = mainContent;
	}
	public String getVideoLink() {
		return videoLink;
	}
	public void setVideoLink(String videoLink) {
		this.videoLink = videoLink;
	}
	public Timestamp getRegDatetime() {
		return regDatetime;
	}
	public void setRegDatetime(Timestamp regDatetime) {
		this.regDatetime = regDatetime;
	}
	public List<SubImageVO> getImageList() {
		return imageList;
	}
	public void setImageList(List<SubImageVO> imageList) {
		this.imageList = imageList;
	}
	public List<PortfolioContentVO> getPortfolioContentList() {
		return portfolioContentList;
	}
	public void setPortfolioContentList(List<PortfolioContentVO> portfolioContentList) {
		this.portfolioContentList = portfolioContentList;
	}
	public PortfolioVO(int id, int userId, String mainTitle, String mainImage, String mainContent, String videoLink,
			Timestamp regDatetime, List<SubImageVO> imageList, List<PortfolioContentVO> portfolioContentList) {
		super();
		this.id = id;
		this.userId = userId;
		this.mainTitle = mainTitle;
		this.mainImage = mainImage;
		this.mainContent = mainContent;
		this.videoLink = videoLink;
		this.regDatetime = regDatetime;
		this.imageList = imageList;
		this.portfolioContentList = portfolioContentList;
	}
	public PortfolioVO() {
		super();
	}
	@Override
	public String toString() {
		return "PortfolioVO [id=" + id + ", userId=" + userId + ", mainTitle=" + mainTitle + ", mainImage=" + mainImage
				+ ", mainContent=" + mainContent + ", videoLink=" + videoLink + ", regDatetime=" + regDatetime
				+ ", imageList=" + imageList + ", portfolioContentList=" + portfolioContentList + "]";
	}
}
