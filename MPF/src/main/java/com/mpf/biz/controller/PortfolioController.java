package com.mpf.biz.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mpf.biz.model.portfolio.PortfolioService;
import com.mpf.biz.model.portfolio.PortfolioVO;
import com.mpf.biz.model.user.UserVO;

@Controller
public class PortfolioController {
	
	@Autowired
	private PortfolioService pService;
	
	@RequestMapping(value="createPortfolio.do")
	@ResponseBody
	public boolean createPortfolio(PortfolioVO pvo, HttpSession session) {
		UserVO uvo = (UserVO)session.getAttribute("user");
		return pService.createPortfolio(pvo, uvo);
	}
	
	@RequestMapping(value="deletePortfolio.do")
	@ResponseBody
	public boolean deletePortfolio(PortfolioVO pvo, HttpSession session) {
		UserVO uvo = (UserVO)session.getAttribute("user");
		return pService.deletePortfolio(pvo, uvo);
	}
	
	@RequestMapping(value="savePortfolio.do")
	@ResponseBody
	public boolean savePortfolio(PortfolioVO pvo, HttpSession session) {
		UserVO uvo = (UserVO)session.getAttribute("user");
		System.out.println(pvo);
		return pService.savePortfolio(pvo, uvo);
	}
	
	@RequestMapping(value="getPortfolio.do")
	@ResponseBody
	public PortfolioVO getPortfolio(PortfolioVO pvo) {
		return pService.getPortfolioWithAll(pvo);
	}

}
