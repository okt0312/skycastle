package com.kh.skycastle.group.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.skycastle.common.model.vo.PageInfo;
import com.kh.skycastle.common.template.Pagination;
import com.kh.skycastle.group.model.service.GroupService;
import com.kh.skycastle.group.model.vo.Groups;

@Controller
public class GroupController {
	
	@Autowired
	private GroupService gService;

	@RequestMapping("groupList.gr")
	public String selectGroupList(int currentPage, Model model) {
		
		int groupListCount = gService.selectGroupListCount();
		
		PageInfo pi = Pagination.getPageInfo(groupListCount, currentPage, 10, 5);
		ArrayList<Groups> list = gService.selectGroupList(pi);
		
		model.addAttribute("pi", pi);
		model.addAttribute("list", list);
		
		return "groups/groupListView";
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