package com.kh.skycastle.cs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NoticeController {

	@RequestMapping("faq.cs")
	 public String faqList() {
			return "cs/faq";
	 }
	
}
