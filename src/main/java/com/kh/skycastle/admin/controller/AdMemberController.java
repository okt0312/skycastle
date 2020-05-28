package com.kh.skycastle.admin.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.skycastle.admin.model.service.AdMemberService;
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
	
	
	
//	나중에 변경예정
	@RequestMapping("gradeMgmt.ad")
	public String adGradeMgmtForm()
	{
		return "admin/adGradeMgmtForm";
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
