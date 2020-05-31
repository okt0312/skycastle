package com.kh.skycastle.group.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.skycastle.group.model.service.GroupService;

@Controller
public class GroupController {
	
	@Autowired
	private GroupService gService;

	@RequestMapping("groupList.gr")
	public String selectGroupList(int currentPage) {
		
		int groupListCount = gService.selectGroupListCount();
		
		return "groups/groupList";
	}
	
	
	@RequestMapping("groupApplyForm.gr")
	public String groupApplyForm() {
		return "groups/groupApplyForm";
	}
	
	@RequestMapping("mygroupList.gr")
	public String mygroupList() {
		return "myPage/myPageGroupListNow";
	}
	
}