package com.kh.skycastle.cs.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.skycastle.cs.model.service.NoticeService;

@Controller
public class NoticeController {

	@Autowired 
	private NoticeService nService;
	
	@RequestMapping("faq.cs")
	 public String faqList() {
			return "cs/faq";
	 }
	
}
