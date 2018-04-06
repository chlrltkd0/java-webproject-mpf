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

import com.mpf.biz.model.user.UserService;
import com.mpf.biz.model.user.UserVO;

@Controller
public class ImageController {
	
	@Resource(name="uploadPath")
	String uploadPath;
	
	@Autowired
	private UserService uService;
	
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
		
		System.out.println(realPath);
		System.out.println(file);
		
		FileCopyUtils.copy(file.getBytes(), createTarget);
		FileCopyUtils.copy(file.getBytes(), createTarget2);
		
		uService.setPageImageName(uvo, savedName);
	}
}
