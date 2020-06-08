package com.kh.skycastle.groups.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.skycastle.common.model.vo.PageInfo;
import com.kh.skycastle.common.template.Pagination;
import com.kh.skycastle.cs.model.vo.Notice;
import com.kh.skycastle.groups.model.service.GroupService;
import com.kh.skycastle.groups.model.vo.Dips;
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
//		ArrayList<Groups> thumbnail = gService.selectGroupThumbnailList(pi);
		
		model.addAttribute("pi", pi);
		model.addAttribute("list", list);
		
		return "groups/groupListView";
	}
	
	@RequestMapping("groupDetail.gr")
	public ModelAndView selectGroup(int gno, int userNo, ModelAndView mv) {
		
		Groups g = gService.selectGroup(gno);
		Dips d = new Dips(userNo, gno);
		int countDips = gService.countDips(d);
		System.out.println(countDips);
		
		mv.addObject("g", g);
		mv.addObject("count", countDips);
		
		mv.setViewName("groups/groupDetail");

		return mv;
	}
	
	

	@RequestMapping("dipsIn.gr")
	public ModelAndView dipsIn(int gno, int userNo, ModelAndView mv, HttpServletResponse response) {
		
		Groups g = gService.selectGroup(gno);
		Dips d = new Dips(userNo, gno);
		
		mv.addObject("g", g);
		mv.setViewName("groups/groupDetail");
		
		return mv;
	}
	
	@RequestMapping("dipsOut.gr")
	public ModelAndView dipsOut(int gno, int userNo, ModelAndView mv, HttpServletResponse response) {
		
		Groups g = gService.selectGroup(gno);
		Dips d = new Dips(userNo, gno);
		
		mv.addObject("g", g);
		mv.setViewName("groups/groupDetail");
		
		return mv;
	}

	
	@RequestMapping("groupApplyForm.gr")
	public ModelAndView groupApplyForm(int gno, int userNo, ModelAndView mv) {
		
		Groups g = gService.selectGroup(gno);
		Dips d = new Dips(userNo, gno);
		int countDips = gService.countDips(d);
		System.out.println(countDips);
		
		mv.addObject("g", g);
		mv.addObject("count", countDips);
		
		mv.setViewName("groups/groupApplyForm");
		
		return mv;
	}
	
	@RequestMapping("mygroupList.gr")
	public String mygroupList(int currentPage, String status, Model model) {
		
		int groupListCount = gService.selectGroupListCount();
		
		PageInfo pi = Pagination.getPageInfo(groupListCount, currentPage, 10, 5);
		ArrayList<Groups> list = gService.selectMyGroupList(pi, status);
//		ArrayList<Groups> thumbnail = gService.selectMyGroupThumbnailList(pi);
		
		model.addAttribute("pi", pi);
		model.addAttribute("list", list);
		
		return "myPage/myPageGroupListView";
	}

	
	
}