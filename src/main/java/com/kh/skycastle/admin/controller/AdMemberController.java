package com.kh.skycastle.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdMemberController {

	@RequestMapping("memberList.ad")
	public String adMemberListForm()
	{
		
		return "admin/adMemberListForm";
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
