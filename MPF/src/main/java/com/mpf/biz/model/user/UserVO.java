package com.mpf.biz.model.user;

import java.sql.Timestamp;
import java.util.List;

import com.mpf.biz.model.portfolio.PortfolioVO;

public class UserVO {
	private int id;
	private String email;
	private String password;
	private String nickname;
	private int mainPageId;
	private int grade;
	private Timestamp regDatetime;
	private Timestamp lastLoginDatetime;
	
	private PageVO mainPage;
	private List<PortfolioVO> portfolioList; 

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public int getMainPageId() {
		return mainPageId;
	}

	public void setMainPageId(int mainPageId) {
		this.mainPageId = mainPageId;
	}

	public int getGrade() {
		return grade;
	}

	public void setGrade(int grade) {
		this.grade = grade;
	}

	public Timestamp getRegDatetime() {
		return regDatetime;
	}

	public void setRegDatetime(Timestamp regDatetime) {
		this.regDatetime = regDatetime;
	}

	public Timestamp getLastLoginDatetime() {
		return lastLoginDatetime;
	}

	public void setLastLoginDatetime(Timestamp lastLoginDatetime) {
		this.lastLoginDatetime = lastLoginDatetime;
	}

	public PageVO getMainPage() {
		return mainPage;
	}

	public void setMainPage(PageVO mainPage) {
		this.mainPage = mainPage;
	}

	public List<PortfolioVO> getPortfolioList() {
		return portfolioList;
	}

	public void setPortfolioList(List<PortfolioVO> portfolioList) {
		this.portfolioList = portfolioList;
	}
	
	public UserVO(int id, String email, String password, String nickname, int mainPageId, int grade,
			Timestamp regDatetime, Timestamp lastLoginDatetime, PageVO mainPage, List<PortfolioVO> portfolioList) {
		super();
		this.id = id;
		this.email = email;
		this.password = password;
		this.nickname = nickname;
		this.mainPageId = mainPageId;
		this.grade = grade;
		this.regDatetime = regDatetime;
		this.lastLoginDatetime = lastLoginDatetime;
		this.mainPage = mainPage;
		this.portfolioList = portfolioList;
	}

	public UserVO() {
		super();
	}

	@Override
	public String toString() {
		return "UserVO [id=" + id + ", email=" + email + ", password=" + password + ", nickname=" + nickname
				+ ", mainPageId=" + mainPageId + ", grade=" + grade + ", regDatetime=" + regDatetime
				+ ", lastLoginDatetime=" + lastLoginDatetime + ", mainPage=" + mainPage + ", portfolioList="
				+ portfolioList + "]";
	}
}
