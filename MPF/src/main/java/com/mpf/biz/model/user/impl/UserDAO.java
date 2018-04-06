package com.mpf.biz.model.user.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mpf.biz.model.user.PageVO;
import com.mpf.biz.model.user.UserVO;

@Repository
public class UserDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	public int insertUser(UserVO uvo) {
		return mybatis.insert("UserDAO.insertUser", uvo);
	}

	public int checkEmail(UserVO uvo) {
		return mybatis.selectOne("UserDAO.checkEmail", uvo);
	}
	
	public UserVO getUserByEmailPw(UserVO uvo) {
		return mybatis.selectOne("UserDAO.getUserByEmailPw", uvo);
	}
	
	public int genId() {
		return mybatis.selectOne("UserDAO.genId");
	}

	public UserVO getUserWithMainPage(UserVO uvo) {
		return mybatis.selectOne("UserDAO.getUserWithMainPage", uvo);
	}

	public UserVO getUserWithPortfolio(UserVO uvo) {
		System.out.println((UserVO)mybatis.selectOne("UserDAO.getUserWithPortfolio", uvo));
		return mybatis.selectOne("UserDAO.getUserWithPortfolio", uvo);
	}
}
