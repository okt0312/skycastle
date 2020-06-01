package com.kh.skycastle.groups.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.skycastle.common.model.vo.PageInfo;
import com.kh.skycastle.common.template.Pagination;
import com.kh.skycastle.groups.model.service.GroupService;
import com.kh.skycastle.groups.model.vo.Groups;

@Controller
public class GroupController {
	
	@Autowired
	private GroupService gService;

	@RequestMapping("groupList.gr")
	public String selectGroupList(int currentPage, Model model) {
		
		int groupListCount = gService.selectGroupListCount();
		
		PageInfo pi = Pagination.getPageInfo(groupListCount, currentPage, 10, 5);
		ArrayList<Groups> list = gService.selectGroupList(pi);
		ArrayList<Groups> thumbnail = gService.selectGroupThumbnailList(pi);
		
		model.addAttribute("pi", pi);
		model.addAttribute("list", list);
		
		return "groups/groupListView";
	}
	
	
	@RequestMapping("groupDetail.gr")
	public ModelAndView selectGroup(int gno, ModelAndView mv) {
		
		int result = gService.increaseCount(gno);
		
		if(result > 0) {// 제대로 찾은 경우
			
			Groups g = gService.selectGroup(gno);
			mv.addObject("g", g);
			mv.setViewName("groups/groupDetail");
			
		}else {// 게시글 상세 조회 실패. 제대로 찾지 못함
			
			mv.addObject("msg", "소모임 상세조회 실패");
			mv.setViewName("common/errorPage");
		}
		return mv;
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