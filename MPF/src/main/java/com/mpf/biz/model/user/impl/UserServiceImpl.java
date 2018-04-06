package com.mpf.biz.model.user.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mpf.biz.model.portfolio.PortfolioVO;
import com.mpf.biz.model.portfolio.impl.PortfolioDAO;
import com.mpf.biz.model.user.PageVO;
import com.mpf.biz.model.user.UserService;
import com.mpf.biz.model.user.UserVO;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserDAO userDAO;
	@Autowired
	private PageDAO pageDAO;
	@Autowired
	private PortfolioDAO portfolioDAO;

	@Override
	public UserVO register(UserVO uvo) {
		boolean result = false;
		System.out.println(userDAO.checkEmail(uvo));
		if(userDAO.checkEmail(uvo)==0) {
			int userId = userDAO.genId();
			int pageId = pageDAO.genId();
			
			PageVO pvo = new PageVO();
			pvo.setId(pageId);
			pvo.setUserId(userId);
			
			result = pageDAO.insertPage(pvo)==1;
			System.out.println(result);
			uvo.setId(userId);
			uvo.setMainPageId(pageId);

			result = result && userDAO.insertUser(uvo)==1;
			if(result)
				return userDAO.getUserWithMainPage(uvo);
		}
		return null;
	}

	@Override
	public UserVO login(UserVO uvo) {
		return userDAO.getUserByEmailPw(uvo);
	}

	@Override
	public UserVO getUserWithMainPage(UserVO uvo) {
		return userDAO.getUserWithMainPage(uvo);
	}
	
	@Override
	public UserVO getUserWithPortfolio(UserVO uvo) {
		return userDAO.getUserWithPortfolio(uvo);
	}

	@Override
	public boolean newPage(UserVO uvo) {
		return false;
	}

	@Override
	public boolean savePage(PageVO pvo, UserVO uvo) {
		pvo.setUserId(uvo.getId());
		pvo.setId(uvo.getMainPageId());
		return pageDAO.updatePage(pvo)==1;
	}

	@Override
	public UserVO getUserWithAll(UserVO uvo) {
		UserVO retuvo = userDAO.getUserWithMainPage(uvo);
		if(retuvo!=null) {
			List<PortfolioVO> plist = userDAO.getUserWithPortfolio(uvo).getPortfolioList();
			if(plist!=null)
				retuvo.setPortfolioList(plist);
		}
		return retuvo;
	}

	@Override
	public boolean setPageImageName(UserVO uvo, String name) {
		PageVO pvo = new PageVO();
		pvo.setId(uvo.getMainPageId());
		pvo.setUserId(uvo.getId());
		pvo.setImgName(name);
		return pageDAO.updateImageName(pvo)==1;
	}

	@Override
	public PageVO getMainPage(UserVO uvo) {
		return pageDAO.getMainPage(uvo);
		
	}

}
