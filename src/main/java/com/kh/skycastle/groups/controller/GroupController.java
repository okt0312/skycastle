package com.kh.skycastle.groups.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.skycastle.common.model.vo.PageInfo;
import com.kh.skycastle.common.template.Pagination;
import com.kh.skycastle.groups.model.dto.GroupDto;
import com.kh.skycastle.groups.model.service.GroupService;
import com.kh.skycastle.groups.model.vo.Dips;
import com.kh.skycastle.groups.model.vo.Groups;
import com.kh.skycastle.member.model.vo.Member;

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
	
	
	@ResponseBody
	@RequestMapping(value="dipsIn.gr", produces="application/json; charset=utf-8")
	public String dipsIn(int gno, int userNo, HttpServletResponse response) {
		
//		Groups g = gService.selectGroup(gno);
//		Dips d = new Dips(userNo, gno);
//		
//		mv.addObject("g", g);
//		mv.setViewName("groups/groupDetail");
//		
//		return mv;
		
		
		Member m = new Member("user01", "pass01", "홍길동", 15, "aaa@naver.com");
		// JSON : 자바스크립트 객체 표기법({속성:속성값, 속성:속성값})
		
//		Gson gson = new Gson();
		
//		gson.toJson(m, response.getWriter());// 기존에 사용하던 방법
//		return gson.toJson(m);		// Member --> JSONObject --> String
		
//		Gson gson = new Gson();
//		return gson.toJson(m);		// Member --> JSONObject --> String
		// 두줄을 아래 한줄로
		return new Gson().toJson(m);
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
		
		mv.addObject("g", g);
		mv.addObject("count", countDips);
		
		mv.setViewName("groups/groupApplyForm");
		
		return mv;
	}
	
	@RequestMapping("mygroupList.gr")
	public String mygroupList(int currentPage, GroupDto gd, Model model, HttpSession session) {
		
		int groupListCount = gService.selectGroupListCount();
		
		PageInfo pi = Pagination.getPageInfo(groupListCount, currentPage, 10, 5);
		
		Member m = (Member)session.getAttribute("loginUser");
		gd.setUserNo(m.getUserNo());
		
		ArrayList<Groups> list = gService.selectMyGroupList(pi, gd);
//		ArrayList<Groups> thumbnail = gService.selectMyGroupThumbnailList(pi);
		
		model.addAttribute("pi", pi);
		model.addAttribute("list", list);
		
		return "myPage/myPageGroupListView";
	}

	
	
}