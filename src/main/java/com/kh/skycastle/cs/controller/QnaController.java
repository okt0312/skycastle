package com.kh.skycastle.cs.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.kh.skycastle.cs.model.service.QnaService;
import com.kh.skycastle.cs.model.vo.Qna;

@Controller
public class QnaController {

	@Autowired 
	private QnaService qService;
	
	@RequestMapping("insertForm.cs")
	public String insertNonMemberInquiryForm() {
		return "cs/non-memberInquiry";
	}
	
	@RequestMapping("meminsertForm.cs")
	public String insertMemberInquiryForm() {
		return "cs/memberInquiry";
	}
	
	@RequestMapping("insert.cs")
	public String insertNonMemberInquiry(Qna q, HttpServletRequest request, 
			                             @RequestParam(name="uploadFile", required=false) MultipartFile file) {
		if(!file.getOriginalFilename().equals("")) {
		
			String changeName = saveFile(file, request);
			
			q.setOriginName(file.getOriginalFilename());
			q.setChangeName(changeName);
			
		}
		
		System.out.println(q);
		
		int result = qService.insertNonMemberInquiry(q);
		
		if(result > 0) {
		
			return "redirect:/";
			
		}else {
			
			return "common/errorPage";
		}
	
	}
	
	@RequestMapping("meminsert.cs")
	public String insertMemberInquiry(Qna q, HttpServletRequest request, 
			                             @RequestParam(name="uploadFile", required=false) MultipartFile file) {
		if(!file.getOriginalFilename().equals("")) {
		
			String changeName = saveFile(file, request);
			
			q.setOriginName(file.getOriginalFilename());
			q.setChangeName(changeName);
			
		}
			System.out.println(q);
		
		int result = qService.insertMemberInquiry(q);
		
		if(result > 0) {
		
			return "redirect/OneOnOne.my";
			
		}else {
			
			return "common/errorPage";
		}
	
	}
	
	public String saveFile(MultipartFile file, HttpServletRequest request) {
		
		String resources = request.getSession().getServletContext().getRealPath("resources");
		String savePath = resources + "\\uploadFiles\\qna\\";
		
		String originName = file.getOriginalFilename();
		
		String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
		
		String ext = originName.substring(originName.lastIndexOf("."));
		
		String changeName = currentTime + ext;
		
		try {
			file.transferTo(new File(savePath + changeName));
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		
		return changeName;
		
	}
	
	
	
}
