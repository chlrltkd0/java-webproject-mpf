package com.mpf.biz.model.user.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mpf.biz.model.user.PageVO;
import com.mpf.biz.model.user.UserVO;

@Repository
public class PageDAO {
	
	@Autowired 
	private SqlSessionTemplate mybatis;
	
	public int insertPage(PageVO upvo) {
		return mybatis.insert("PageDAO.insertPage", upvo);
	}
	
	public int genId() {
		return mybatis.selectOne("PageDAO.genId");
	}

	public int updatePage(PageVO pvo) {
		return mybatis.update("PageDAO.updatePage", pvo);
		
	}

	public int updateImageName(PageVO pvo) {
		return mybatis.update("PageDAO.updateImageName", pvo);
		
	}

	public PageVO getMainPage(UserVO uvo) {
		return mybatis.selectOne("PageDAO.getMainPage", uvo);
	}

}
