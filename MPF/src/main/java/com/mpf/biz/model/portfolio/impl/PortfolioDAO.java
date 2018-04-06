package com.mpf.biz.model.portfolio.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mpf.biz.model.portfolio.PortfolioVO;
import com.mpf.biz.model.user.UserVO;

@Repository
public class PortfolioDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;

	public int insertPortfolio(PortfolioVO pvo) {
		return mybatis.insert("PortfolioDAO.insertPortfolio", pvo);		
	}

	public int genId() {
		return mybatis.selectOne("PortfolioDAO.genId");
	}

	public PortfolioVO getPortfolioWithAll(PortfolioVO pf) {
		return mybatis.selectOne("PortfolioDAO.getPortfolioWithAll", pf);
	}

	public int deletePortfolio(PortfolioVO pvo) {
		return mybatis.delete("PortfolioDAO.deletePortfolio", pvo);
		
	}

	public int savePortfolio(PortfolioVO pvo) {
		return mybatis.update("PortfolioDAO.updatePortfolio", pvo);
	}
	
}
