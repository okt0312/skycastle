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
import com.kh.skycastle.groups.model.service.CalendarService;
import com.kh.skycastle.groups.model.service.MypageGroupService;
import com.kh.skycastle.groups.model.vo.Calendar;
import com.kh.skycastle.groups.model.vo.GroupManage;
import com.kh.skycastle.groups.model.vo.GroupNotice;
import com.kh.skycastle.groups.model.vo.Reply;
import com.kh.skycastle.member.model.vo.Member;

@Controller
public class MypageGroupController {
	
	@Autowired
	private MypageGroupService mgService;
	
	@Autowired
	private CalendarService calService;
	
	// 그룹 공지사항 리스트
	@RequestMapping("mygroupNoticeList.gr")
	public String selectGroupNoticeList(int currentPage, int gno, Model model,HttpSession session) {

		//int result = mgService.increaseGroupNoticeListCount(gno);
		
		int groupNoticeListCount = mgService.selectGroupNoticeListCount(gno);
		PageInfo pi = Pagination.getPageInfo(groupNoticeListCount, currentPage, 10, 10);
		
		ArrayList<GroupNotice> list = mgService.selectGroupNoticeList(pi, gno);
		int listGno = gno;
		session.setAttribute("listGno", listGno);
		model.addAttribute("pi", pi);
		model.addAttribute("list", list);
		
		return "groups/mygroupNoticeListView";
	}
	
	// 그룹 공지사항 상세
	@RequestMapping("mygroupNoticeDetail.gr")
	public ModelAndView selectGroupNotice(int gnoticeNo,int groupNo, ModelAndView mv) {
		//System.out.println(groupNo);
		int result = mgService.increaseGroupNoticeCount(gnoticeNo);
			
		GroupNotice gn = mgService.selectGroupNotice(gnoticeNo);
		mv.addObject("gn", gn);
		mv.addObject("groupNo", groupNo);
		mv.setViewName("groups/mygroupNoticeDetail");
			
		return mv;
	}
	
	// 방장 공지사항 등록 폼
	@RequestMapping("mygroupNoticeEnrollForm.gr")
	public String groupNoticeEnrollForm(int groupNo,Model model) {
		//System.out.println(groupNo);
		model.addAttribute("groupNo",groupNo);
		return ("groups/mygroupNoticeEnrollForm");
	}
	
	// 방장 공지사항 등록
	@RequestMapping("groupNoticeInsert.gr")
	public String insertGroupNotice(GroupNotice gn, Model model, HttpSession session) {
		int result = mgService.insertGroupNotice(gn);
		
		//System.out.println(gn);
		
		if(result > 0) {
			return "redirect:mygroupNoticeList.gr?currentPage=1&gno=" + gn.getGroupNo();
		} else {
			return "소모임 공지사항 등록 실패";
		}
	
	}
	
	
	
	// 방장 공지사항 수정폼
	@RequestMapping("mygroupNoticeUpdateForm.gr")
	public String updateForm(GroupNotice gn, Model model) {
		//System.out.println(gn.getGnoticeNo());
		GroupNotice gNotice = mgService.selectGroupNotice(gn.getGnoticeNo());
		//System.out.println(gNotice);
		model.addAttribute("gn", gNotice);
		return "groups/mygroupNoticeUpdate";
		
	}
	
	// 방장 공지사항 수정
	@RequestMapping("mygroupNoticeUpdate.gr")
	public String updateGroupNotice(GroupNotice gn) {
		System.out.println(gn);
		int result = mgService.updateGroupNotice(gn);
		
		if(result > 0) { 
			return "redirect:mygroupNoticeDetail.gr?gnoticeNo=" + gn.getGnoticeNo();
		} else { 
			return "소모임 공지사항 수정 실패";
		}
	}
	
	// 방장 공지사항 삭제
	@RequestMapping("mygroupNoticedelete.gr")
	public String deleteGroupNotice(int gnoticeNo,int groupNo,HttpSession session) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		int result = mgService.deleteGroupNotice(gnoticeNo);
		
		if(result > 0) {
			return "redirect:mygroupNoticeList.gr?currentPage=1&gno=" +groupNo+"&userNo="+loginUser.getUserNo();
		} else {
			return "공지사항 삭제 실패";
		}
	}
	
	/* 방장 회원관리 */ 
	@RequestMapping("mygroupMemMg.gr")
	public String myGroupMember(int groupNo, Model model) {
		
		ArrayList<GroupManage> list = mgService.myGroupMember(groupNo);
		model.addAttribute("list", list);
		return "groups/mygroupMemMg";
	}
	
	
	
	
	//이거다이거 위는 퓨리턴이자너 아니야 모달로 값넘기기
	@ResponseBody
	@RequestMapping("replyReportForm.gr")
	public String grReplyReportForm(Model r,int rno)
		{System.out.println(rno);
			ArrayList<Reply> list = mgService.grReplyReportForm(rno);
			r.addAttribute("list", list);
			System.out.println(list);
			return "groups/mygroupNoticeDetail";
	}
	
	@RequestMapping(value="mygroupCalendar.gr")
	public String mygroupList() {
		
		ArrayList<Calendar> list = calService.selectCalList();
		System.out.println(list);
		return "groups/mygroupCalender";
	}

	// 회원의 소모임 탈퇴
	@RequestMapping("groupDropOut.gr")
	public String groupDropOut(GroupManage gm) {
		
		int result = mgService.groupDropOut(gm);
		
		if(result > 0) {
			return "redirect:mygroupList.gr?currentPage=1&status=Y";
		} else {
			return "소모임 탈퇴 실패";
		}
	}
	

	
	
}