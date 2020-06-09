package com.kh.skycastle.groups.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.skycastle.common.model.vo.PageInfo;
import com.kh.skycastle.common.template.Pagination;
import com.kh.skycastle.groups.model.service.MypageGroupService;
import com.kh.skycastle.groups.model.vo.Dips;
import com.kh.skycastle.groups.model.vo.GroupNotice;
import com.kh.skycastle.groups.model.vo.Groups;

@Controller
public class MypageGroupController {
	
	@Autowired
	private MypageGroupService mgService;
	
	@RequestMapping("mygroupNoticeList.gr")
	public String selectGroupNoticeList(int currentPage, Model model) {
		
		int groupNoticeListCount = mgService.selectGroupNoticeListCount();
		
		PageInfo pi = Pagination.getPageInfo(groupNoticeListCount, currentPage, 10, 5);
		
		ArrayList<GroupNotice> list = mgService.selectGroupNoticeList(pi);
		
		model.addAttribute("pi", pi);
		model.addAttribute("list", list);
		
		return "groups/mygroupNoticeListView";
	}
	
	@RequestMapping("mygroupNoticeEnrollForm.gr")
	public String groupApplyForm(int gno, int userNo, ModelAndView mv) {
		
		GroupNotice gn = mgService.selectGroup(gno);
		
		mv.addObject("gn", gn);
		
		mv.setViewName("groups/mygroupNoticeEnrollForm");
		
		return mv;
	}
	
	
}