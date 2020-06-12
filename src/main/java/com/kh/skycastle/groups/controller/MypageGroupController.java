package com.kh.skycastle.groups.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.skycastle.common.model.vo.PageInfo;
import com.kh.skycastle.common.template.Pagination;
import com.kh.skycastle.cs.model.vo.Notice;
import com.kh.skycastle.groups.model.service.MypageGroupService;
import com.kh.skycastle.groups.model.vo.Dips;
import com.kh.skycastle.groups.model.vo.GroupNotice;
import com.kh.skycastle.groups.model.vo.Groups;

@Controller
public class MypageGroupController {
	
	@Autowired
	private MypageGroupService mgService;
	
	// 그룹 공지사항 리스트
	@RequestMapping("mygroupNoticeList.gr")
	public String selectGroupNoticeList(int currentPage, int gno, Model model) {
		
		
		int groupNoticeListCount = mgService.selectGroupNoticeListCount();
		PageInfo pi = Pagination.getPageInfo(groupNoticeListCount, currentPage, 10, 5);
		
		ArrayList<GroupNotice> list = mgService.selectGroupNoticeList(pi, gno);
		
		model.addAttribute("pi", pi);
		model.addAttribute("list", list);
		
		return "groups/mygroupNoticeListView";
	}
	
	// 그룹 공지사항 상세
	@RequestMapping("mygroupNoticeDetail.gr")
	public ModelAndView selectGroup(int gno, int userNo, ModelAndView mv) {
		
		Groups g = mgService.insertNotice(gno);

		mv.addObject("g", g);
		
		mv.setViewName("groups/groupDetail");

		return mv;
	}
	
	// 방장 공지사항 등록 폼
	@RequestMapping("mygroupNoticeEnrollForm.gr")
	public String groupNoticeEnrollForm() {
		return ("groups/mygroupNoticeEnrollForm");
	}
	
	// 방장 공지사항 등록
	@RequestMapping("groupNoticeInsert.gr")
	public String insertGroupNotice(GroupNotice gn, Model model, HttpSession session) {
		int result = mgService.insertGroupNotice(gn);
		
		if(result > 0) {
			return "redirect:mygroupNoticeList.gr";
		} else {
			return "소모임 공지사항 등록 실패";
		}
	}
	
	// 방장 공지사항 수정
//	@RequestMapping("mygroupNoticeUpdate.gr")
//	public String updateAdNotice(Notice n, Model model, HttpSession session) {
//		System.out.println("컨트롤러n"+n);
//		System.out.println("컨트롤러 세션"+ session);
//		int result = adBoService.updateAdNotice(n);
//		
//		if(result > 0) { 
//			
//			return "redirect:noticeMgmt.ad";
//			//return "redirect:noticeDetail.ad?bno="+n.getNoticeNo();
//		} else { 
//			
//			return "수정 실패";
//		}
//	}
	
	// 방장 공지사항 삭제 - 수정중
//	@RequestMapping("deleteNotice.ad")
//	public String deleteAdNotice(int noticeNo, Model model, HttpSession session) {
//		int result = adBoService.deleteAdNotice(noticeNo);
//		
//		if(result > 0) {
//			
//			return "redirect:noticeMgmt.ad";
//		} else {
//			return "삭제 실패";
//		}
//	}
	
	
	
	// 방장 공지사항 상세페이지 - 수정중
//	@RequestMapping("noticeDetail.ad")
//	public ModelAndView selectNoDetail(int bno, ModelAndView mv) {
//		
//		Notice n = adBoService.selectNoDetail(bno);
//		mv.addObject("n", n);
//		mv.setViewName("admin/adNoticeDetailView");
//		
//		return mv;
//	}

	
	
}