package com.mpf.biz.model.user;

public class PageVO {
	private int id;
	private int userId;
	private String imgName;
	private String mainTitle;
	private String mainContent;
	private String subTitle;
	private String subContentLeft;
	private String subContentRight;
	
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
	public String getImgName() {
		return imgName;
	}
	public void setImgName(String imgName) {
		this.imgName = imgName;
	}
	public String getMainTitle() {
		return mainTitle;
	}
	public void setMainTitle(String mainTitle) {
		this.mainTitle = mainTitle;
	}
	public String getMainContent() {
		return mainContent;
	}
	public void setMainContent(String mainContent) {
		this.mainContent = mainContent;
	}
	public String getSubTitle() {
		return subTitle;
	}
	public void setSubTitle(String subTitle) {
		this.subTitle = subTitle;
	}
	public String getSubContentLeft() {
		return subContentLeft;
	}
	public void setSubContentLeft(String subContentLeft) {
		this.subContentLeft = subContentLeft;
	}
	public String getSubContentRight() {
		return subContentRight;
	}
	public void setSubContentRight(String subContentRight) {
		this.subContentRight = subContentRight;
	}
	public PageVO(int id, int userId, String imgName, String mainTitle, String mainContent, String subTitle,
			String subContentLeft, String subContentRight) {
		super();
		this.id = id;
		this.userId = userId;
		this.imgName = imgName;
		this.mainTitle = mainTitle;
		this.mainContent = mainContent;
		this.subTitle = subTitle;
		this.subContentLeft = subContentLeft;
		this.subContentRight = subContentRight;
	}
	public PageVO() {
		super();
	}
	@Override
	public String toString() {
		return "UserPageVO [id=" + id + ", userId=" + userId + ", imgName=" + imgName + ", mainTitle=" + mainTitle
				+ ", mainContent=" + mainContent + ", subTitle=" + subTitle + ", subContentLeft=" + subContentLeft
				+ ", subContentRight=" + subContentRight + "]";
	}
}
