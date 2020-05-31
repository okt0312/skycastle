package com.kh.skycastle.group.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.skycastle.group.model.service.GroupNoticeService;
import com.kh.skycastle.group.model.service.GroupService;

@Controller
public class GroupNoticeController {
	
	@Autowired
	private GroupNoticeService gnService;
	
	@RequestMapping("groupNoticeList.gr")
	public String selectGroupNoticeList(int currentPage) {
		
		int groupNoticeListCount = gnService.selectGroupNoticeListCount();
		
		return "groups/mygroupNoticeList";
	}
	


}
