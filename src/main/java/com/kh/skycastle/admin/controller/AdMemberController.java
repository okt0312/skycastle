package com.kh.skycastle.admin.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.skycastle.admin.model.service.AdMemberService;
import com.kh.skycastle.member.model.vo.Grade;
import com.kh.skycastle.member.model.vo.Member;

@Controller
public class AdMemberController {

	@Autowired
	private AdMemberService admService;
	
	@RequestMapping("memberList.ad")
	public ModelAndView adMemberListForm(ModelAndView mv)
	{
		ArrayList<Member> list = admService.selectMember();
		
		mv.addObject("list", list).setViewName("admin/adMemberListForm");
		
		return mv;
	}
	
	@RequestMapping("gradeMgmt.ad")
	public ModelAndView adGradeMgmtForm(ModelAndView mv)
	{
		ArrayList<Grade> list = admService.selectGrade();
		System.out.println(list);
		mv.addObject("list", list).setViewName("admin/adGradeMgmtForm");
		
		return mv;
	}
	
	@RequestMapping("reportMgmt.ad")
	public String adReporList()
	{
		return "admin/adReportForm";
	}
	
	@RequestMapping("blackListMgmt.ad")
	public String adBlackListForm()
	{
		return "admin/adBlacklistForm";
	}
}
