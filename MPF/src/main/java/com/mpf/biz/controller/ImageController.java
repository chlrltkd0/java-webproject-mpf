package com.mpf.biz.controller;

import java.io.File;
import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.mpf.biz.model.portfolio.PortfolioService;
import com.mpf.biz.model.portfolio.PortfolioVO;
import com.mpf.biz.model.user.UserService;
import com.mpf.biz.model.user.UserVO;

@Controller
public class ImageController {
	
	@Resource(name="uploadPath")
	String uploadPath;
	
	String uploadpfPath = "C:\\Users\\PC-22\\git\\java-webproject-mpf\\MPF\\src\\main\\webapp\\resources\\img\\portfolio";
	
	@Autowired
	private UserService uService;
	
	@Autowired
	private PortfolioService pService;
	
	@RequestMapping(value="uploadMainImage.do")
	@ResponseBody
	public void uploadMainImage(@RequestParam("uploadimage")MultipartFile file, HttpSession session) throws IOException {
		UserVO uvo = (UserVO)session.getAttribute("user");
		String realPath = session.getServletContext().getRealPath("/") + "resources\\img\\profile\\";
		
		if(!uService.getMainPage(uvo).getImgName().equals("default.png")) {
			File deleteTarget = new File(uploadPath, uService.getMainPage(uvo).getImgName());
			File deleteTarget2 = new File(realPath, uService.getMainPage(uvo).getImgName());
			if(deleteTarget.exists())
				deleteTarget.delete();
			if(deleteTarget2.exists())
				deleteTarget2.delete();
		};
		
		String savedName = uvo.getMainPageId()+uvo.getNickname()+System.currentTimeMillis() + ".png";
	   
		File createTarget = new File(uploadPath, savedName);
		File createTarget2 = new File(realPath, savedName);
		
		FileCopyUtils.copy(file.getBytes(), createTarget);
		FileCopyUtils.copy(file.getBytes(), createTarget2);
		
		uService.setPageImageName(uvo, savedName);
	}
	
	@RequestMapping(value="uploadPortfolioImage.do")
	@ResponseBody
	public void uploadPortfolioImage(@RequestParam("uploadimage")MultipartFile file,
			@RequestParam("id")int id, HttpSession session) throws IOException {
		UserVO uvo = (UserVO)session.getAttribute("user");
		String realPath = session.getServletContext().getRealPath("/") + "resources\\img\\portfolio\\";
		
		PortfolioVO pvo = new PortfolioVO();
		pvo.setId(id);
		pvo.setUserId(uvo.getId());
		
		String imgName = pService.getPortfolio(pvo).getMainImage();

		if(!imgName.equals("default.png")) {
			File deleteTarget = new File(uploadpfPath, imgName);
			File deleteTarget2 = new File(realPath, imgName);
			if(deleteTarget.exists())
				deleteTarget.delete();
			if(deleteTarget2.exists())
				deleteTarget2.delete();
		};
		
		String savedName = uvo.getMainPageId()+uvo.getNickname()+System.currentTimeMillis() + ".png";
	   
		File createTarget = new File(uploadpfPath, savedName);
		File createTarget2 = new File(realPath, savedName);
		
		FileCopyUtils.copy(file.getBytes(), createTarget);
		FileCopyUtils.copy(file.getBytes(), createTarget2);
		
		pService.setPortfolioImageName(pvo, savedName);
	}
}
