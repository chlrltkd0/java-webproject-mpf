package com.mpf.biz.model.portfolio;

import com.mpf.biz.model.user.UserVO;

public interface PortfolioService {
	boolean createPortfolio(PortfolioVO pvo, UserVO uvo);
	boolean deletePortfolio(PortfolioVO pvo, UserVO uvo);
	boolean savePortfolio(PortfolioVO pvo, UserVO uvo);
	PortfolioVO getPortfolioWithAll(PortfolioVO pvo);
}
