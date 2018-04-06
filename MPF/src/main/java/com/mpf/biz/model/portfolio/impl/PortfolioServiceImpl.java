package com.mpf.biz.model.portfolio.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mpf.biz.model.portfolio.PortfolioService;
import com.mpf.biz.model.portfolio.PortfolioVO;
import com.mpf.biz.model.user.UserVO;

@Service
public class PortfolioServiceImpl implements PortfolioService{
	
	@Autowired
	private PortfolioDAO portfolioDAO;

	@Override
	public boolean createPortfolio(PortfolioVO pvo, UserVO uvo) {
		pvo.setId(portfolioDAO.genId());
		pvo.setUserId(uvo.getId());
		return portfolioDAO.insertPortfolio(pvo)==1;
	}

	@Override
	public boolean deletePortfolio(PortfolioVO pvo, UserVO uvo) {
		boolean result = false;
		pvo.setUserId(uvo.getId());
		System.out.println(pvo);
		result = portfolioDAO.deletePortfolio(pvo)==1;
		System.out.println(result);
		return result;
	}

	@Override
	public boolean savePortfolio(PortfolioVO pvo, UserVO uvo) {
		boolean result = false;
		pvo.setUserId(uvo.getId());
		result = portfolioDAO.savePortfolio(pvo)==1;
		return result;
	}
	
	@Override
	public PortfolioVO getPortfolioWithAll(PortfolioVO pvo) {
		pvo = portfolioDAO.getPortfolioWithAll(pvo);
		return pvo;
	}

	@Override
	public boolean setPortfolioImageName(PortfolioVO pvo, String savedName) {
		boolean result = false;
		pvo.setMainImage(savedName);
		result = portfolioDAO.setPortfolioImageName(pvo)==1;
		return result;
	}
}
