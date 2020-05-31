package com.kh.skycastle.cs.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.skycastle.common.model.vo.PageInfo;
import com.kh.skycastle.common.template.Pagination;
import com.kh.skycastle.cs.model.service.NoticeService;
import com.kh.skycastle.cs.model.vo.Notice;

@Controller
public class NoticeController {

	@Autowired 
	private NoticeService nService;
	
	@RequestMapping("faq.cs")
	 public String faqList() {
			return "cs/faq";
	 }
	
	@RequestMapping("list.cs")
	public String selectList(int currentPage, Model model) {
		
		int listCount = nService.selectListCount();
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 10, 5);
		
		ArrayList<Notice> list = nService.selectList(pi);
		
		model.addAttribute("pi", pi);
		model.addAttribute("list", list);
		
		return "cs/noticeListView";
	}
}
