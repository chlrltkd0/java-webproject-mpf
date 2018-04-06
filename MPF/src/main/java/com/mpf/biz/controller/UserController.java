package com.mpf.biz.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mpf.biz.model.user.PageVO;
import com.mpf.biz.model.user.UserService;
import com.mpf.biz.model.user.UserVO;

@Controller
public class UserController {
	
	@Autowired
	private UserService uService;
	
	@RequestMapping(value="/index.do")
	public String mainPage(UserVO uvo, HttpSession session, Model model) {
		if(uvo.getId()==0) {
			UserVO myUser = (UserVO)session.getAttribute("user");
			if(myUser!=null) {
				model.addAttribute("curUser", uService.getUserWithAll(myUser));
			}
		} else {
			model.addAttribute("curUser", uService.getUserWithAll(uvo));
		}
		return "index.jsp";
	}
	
	@RequestMapping(value="/register.do")
	@ResponseBody
	public boolean register(UserVO uvo, Model model) {
		UserVO retUvo = uService.register(uvo);
		model.addAttribute("curUser", retUvo);
		return retUvo!=null;
	}
	
	@RequestMapping(value="/login.do")
	@ResponseBody
	public boolean login(UserVO uvo, HttpSession session) {
		UserVO myUser = uService.login(uvo);
		if(myUser!=null) {
			session.setAttribute("user", myUser);		
			return true;
		}
		return false;
	}
	
	@RequestMapping(value="/savePage.do")
	@ResponseBody
	public boolean savePage(PageVO pvo, HttpSession session) {
		UserVO uvo = (UserVO)session.getAttribute("user");
		return uService.savePage(pvo, uvo);
	}
	
	@RequestMapping(value="/logout.do")
	@ResponseBody
	public void logout(HttpSession session) {
		session.invalidate();
	}
}
