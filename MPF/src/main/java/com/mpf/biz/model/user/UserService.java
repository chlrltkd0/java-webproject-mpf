package com.mpf.biz.model.user;

public interface UserService {
	
	UserVO register(UserVO uvo);
	UserVO login(UserVO uvo);
	UserVO getUserWithAll(UserVO uvo);
	UserVO getUserWithMainPage(UserVO uvo);
	boolean newPage(UserVO uvo);
	boolean savePage(PageVO pvo, UserVO uvo);
	UserVO getUserWithPortfolio(UserVO uvo);
	boolean setPageImageName(UserVO uvo, String name);
	PageVO getMainPage(UserVO uvo);

}
