package com.mpf.biz.model.portfolio;

public class PortfolioContentVO {
	private int id;
	private int portfolioId;
	private String subTitle;
	private String subContent;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getPortfolioId() {
		return portfolioId;
	}
	public void setPortfolioId(int portfolioId) {
		this.portfolioId = portfolioId;
	}
	public String getSubTitle() {
		return subTitle;
	}
	public void setSubTitle(String subTitle) {
		this.subTitle = subTitle;
	}
	public String getSubContent() {
		return subContent;
	}
	public void setSubContent(String subContent) {
		this.subContent = subContent;
	}
	public PortfolioContentVO(int id, int portfolioId, String subTitle, String subContent) {
		super();
		this.id = id;
		this.portfolioId = portfolioId;
		this.subTitle = subTitle;
		this.subContent = subContent;
	}
	public PortfolioContentVO() {
		super();
	}
	@Override
	public String toString() {
		return "PortfolioContentVO [id=" + id + ", portfolioId=" + portfolioId + ", subTitle=" + subTitle
				+ ", subContent=" + subContent + "]";
	}
}
