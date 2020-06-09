package com.kh.skycastle.groups.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.skycastle.common.model.vo.PageInfo;
import com.kh.skycastle.common.template.Pagination;
import com.kh.skycastle.groups.model.service.MypageGroupService;
import com.kh.skycastle.groups.model.vo.GroupNotice;

@Controller
public class MypageGroupController {
	
	@Autowired
	private MypageGroupService mgService;
	
	@RequestMapping("groupNoticeList.gr")
	public String selectGroupNoticeList(int currentPage, Model model) {
		
		int groupNoticeListCount = mgService.selectGroupNoticeListCount();
		
		PageInfo pi = Pagination.getPageInfo(groupNoticeListCount, currentPage, 10, 5);
		
		ArrayList<GroupNotice> list = mgService.selectGroupNoticeList(pi);
		
		model.addAttribute("pi", pi);
		model.addAttribute("list", list);
		
		return "groups/mygroupNoticeListView";
	}
	
	@RequestMapping("mygroupNoticeEnrollForm.gr")
	public String groupApplyForm() {
		return "groups/mygroupNoticeEnrollForm";
	}
	
	
}