package com.kh.skycastle.groups.controller;

import java.util.ArrayList;

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

// 메인페이지에서 소모임기능 관련 컨트롤러
@Controller
public class GroupController {
	
	@Autowired
	private GroupService gService;
	
	@RequestMapping("groupList.gr")
	public String selectGroupListAll(int currentPage, GroupDto gd, Model model) {
		
		int groupListCount = gService.selectGroupListCount();
		
		PageInfo pi = Pagination.getPageInfo(groupListCount, currentPage, 10, 5);
		ArrayList<Groups> list = gService.selectGroupListAll(pi, gd);
		
		model.addAttribute("pi", pi);
		model.addAttribute("list", list);
		
		return "groups/groupListView";
	}
	
	@RequestMapping("groupDetail.gr")
	public ModelAndView selectGroup(int gno, int userNo, ModelAndView mv) {
		
		ArrayList<GroupDto> g = gService.selectGroup(gno);
		Dips d = new Dips(userNo, gno);
		int countDips = gService.countDips(d);
		
		mv.addObject("g", g);
		mv.addObject("count", countDips);
		
		mv.setViewName("groups/groupDetail");

		return mv;
	}
	
	
	@ResponseBody
	@RequestMapping("selectDipsList.gr")
	public int selectDipsList(Dips d){
		int result = gService.selectDipsList(d);
		return result;
	}
	
	// 찜취소
	@ResponseBody
	@RequestMapping(value="dipsIn.gr", produces="application/json; charset=utf-8")
	public int dipsIn(Dips d) {
		int result = gService.dipsIn(d);
		return result;
	}
	
	// 찜취소
	@ResponseBody
	@RequestMapping(value="dipsOut.gr", produces="application/json; charset=utf-8")
	public int dipsOut(Dips d) {
		int result = gService.dipsOut(d);
		return result;
	}

	// 소모임 신청폼
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
	
	// 소모임 신청용
	
	// 마이페이지 상태별 소모임 리스트
	@RequestMapping("mygroupList.gr")
	public String mygroupList(int currentPage, GroupDto gd, Model model, HttpSession session) {
		
		int groupListCount = gService.selectGroupListCount();
		
		PageInfo pi = Pagination.getPageInfo(groupListCount, currentPage, 10, 5);
		
		Member m = (Member)session.getAttribute("loginUser");
		gd.setUserNo(m.getUserNo());
		
		ArrayList<GroupDto> list = gService.selectMyGroupList(pi, gd);
		model.addAttribute("pi", pi);
		model.addAttribute("list", list);
		
		return "myPage/myPageGroupListView";
	}
	
	// 마이페이지 찜한 소모임 리스트
	@RequestMapping("mygroupDipsList.gr")
	public String mygroupDipsList(int currentPage, Model model, HttpSession session) {
		
		int groupListCount = gService.selectGroupListCount();
		
		PageInfo pi = Pagination.getPageInfo(groupListCount, currentPage, 10, 5);
		
		Member m = (Member)session.getAttribute("loginUser");
		
		ArrayList<Dips> list = gService.mygroupDipsList(pi, m.getUserNo());
//		ArrayList<Groups> thumbnail = gService.selectMyGroupThumbnailList(pi);
		
		model.addAttribute("pi", pi);
		model.addAttribute("list", list);
		
		return "myPage/myPageGroupListView";
	}
	
	// 소모임 개설신청 폼
	@RequestMapping("groupEnrollForm.gr")
	public String groupEnrollForm(int userNo) {
		return "groups/groupEnrollForm";
	}
	
	// 소모임 개설 신청용
	@RequestMapping("insertGroup.gr")
	public String insertGroup(Groups g, Model model, HttpSession session) {
		int result = gService.insertGroup(g);
		
		if(result > 0) {	// 성공 --> 마이페이지 소모임 리스트로 이동
			return "redirect:mygroupList.gr";
		} else {
			return "소모임 개설 신청하기 실패";
		}
	}
	
	
}