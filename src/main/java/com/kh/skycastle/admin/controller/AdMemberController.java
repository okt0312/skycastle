package com.kh.skycastle.admin.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
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
		
		for(Member m : list)
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
		
		mv.addObject("list", list).setViewName("admin/adMemberListForm");
		
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
	
	@RequestMapping(value = "updateMember.ad", produces = "text/html; charset=utf-8")
	public ModelAndView updateMember(Member m, ModelAndView mv)
	{	System.out.println(m);
		int result = admService.updateMember(m);
		
		System.out.println(result);
		if(result > 0)
		{
//			model.addAttribute("msg", "회원정보 수정 완료");
			mv.addObject("msg", "회원정보 수정 완료").setViewName("redirect:memberList.ad");
		}
		return mv;
	}
	
	@RequestMapping("gradeMgmt.ad")
	public ModelAndView adGradeMgmtForm(ModelAndView mv)
	{
		ArrayList<Grade> list = admService.selectGrade();
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
