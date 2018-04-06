package com.mpf.biz.model.portfolio;

public class SubImageVO {
	private int id;
	private int portfolioId;
	private String imageName;
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
	public String getImageName() {
		return imageName;
	}
	public void setImageName(String imageName) {
		this.imageName = imageName;
	}
	public SubImageVO(int id, int portfolioId, String imageName) {
		super();
		this.id = id;
		this.portfolioId = portfolioId;
		this.imageName = imageName;
	}
	public SubImageVO() {
		super();
	}
	@Override
	public String toString() {
		return "SubImageVO [id=" + id + ", portfolioId=" + portfolioId + ", imageName=" + imageName + "]";
	}
}
