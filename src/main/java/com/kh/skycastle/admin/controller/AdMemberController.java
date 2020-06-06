package com.kh.skycastle.admin.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.kh.skycastle.admin.model.service.AdMemberService;
import com.kh.skycastle.groups.model.vo.Report;
import com.kh.skycastle.member.model.vo.Grade;
import com.kh.skycastle.member.model.vo.Member;

@Controller
public class AdMemberController {

	@Autowired
	private AdMemberService admService;
	
	@RequestMapping("memberList.ad")
	public ModelAndView adMemberListForm(String status, ModelAndView mv)
	{
		ArrayList<Member> list1 = admService.selectMember(status);
		ArrayList<Grade> list2 = admService.selectGrade();
		for(Member m : list1)
		{
			if(m.getStatus().equals("Y"))
			{
				m.setStatus("회원");
			}
			else if(m.getStatus().equals("N"))
			{
				m.setStatus("비회원");
			}
		}
		
		mv.addObject("list", list1);
		mv.addObject("gradeList", list2);
		mv.setViewName("admin/adMemberListForm");
		return mv;
	}
	
	@ResponseBody
	@RequestMapping(value = "deleteMember.ad", produces = "text/html; charset=utf-8")
	public String deleteMember(int userNo, Model model)
	{
		int result = admService.deleteMember(userNo);
		
		if(result > 0)
		{
			return "회원 탈퇴 성공";
		}
		else
		{
			return "회원 탈퇴 실패";
		}
	}
	
	@ResponseBody
	@RequestMapping(value = "updateMember.ad", produces = "application/json; charset=utf-8")
	public int updateMember(Member m, HttpSession session)
	{	
		int result = admService.updateMember(m);
		
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value="choiceList.ad",  produces = "application/json; charset=utf-8")
	public String choiceMember(String status)
	{
		ArrayList<Member> list1 = admService.selectMember(status);
		ArrayList<Grade> list2 = admService.selectGrade();
		for(Member m : list1)
		{
			if(m.getStatus().equals("Y"))
			{
				m.setStatus("회원");
			}
			else if(m.getStatus().equals("N"))
			{
				m.setStatus("비회원");
			}
		}
		
		return new Gson().toJson(list1);
	}
	
	@RequestMapping("gradeMgmt.ad")
	public ModelAndView adGradeMgmtForm(ModelAndView mv)
	{
		ArrayList<Grade> list = admService.selectGrade();
		mv.addObject("list", list).setViewName("admin/adGradeMgmtForm");
		
		return mv;
	}
	
	
	@RequestMapping("reportMgmt.ad")
	public ModelAndView adReporList(ModelAndView mv)
	{
		ArrayList<Report> list = admService.selectReport();
		mv.addObject("list", list);
		mv.setViewName("admin/adReportForm");
		return mv;
	}
	
	@ResponseBody
	@RequestMapping("updateReport.ad")
	public int updateReport(Member m, String selNo, String reportNo)
	{	
		int result = 0;
		
		m.setReportStatus(Integer.parseInt(selNo));
		if(selNo.equals("2"))
		{
			// 누적 신고 3회시 블랙리스트 처리
			if(m.getRedCard() >= 2)
			{
				// MEMBER 테이블 값 수정
				int result1 = admService.updateMemberReport(m);
				// REPORT 테이블 값 수정
				int result2 = admService.updateReport(m);
				// REPLY 상태값 변경
				int result3 = admService.updateReply(Integer.parseInt(reportNo));
				
				result = result1 * result2 * result3;
			}
			// 누적 신고량 +1
			else
			{
				// MEMBER 테이블 값 수정
				result = admService.updateMemberReport(m);
			}
		}
		else if(selNo.equals("3"))
		{
			// REPORT 상태값 수정
			result= admService.updateReport(m);
		}
		
		return result;
	}
	
	@RequestMapping("blackListMgmt.ad")
	public ModelAndView adBlackListForm(ModelAndView mv)
	{
		ArrayList<Member> list = admService.selectBlacklist();
		
		mv.addObject("list", list).setViewName("admin/adBlacklistForm");
		
		return mv;
	}
}
