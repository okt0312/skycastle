package com.kh.skycastle.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {
	
	@RequestMapping("adminMain.ad")
	public String adminMainForm()
	{
		return "admin/adMain"; 
	}
	
	@RequestMapping("memberList.ad")
	public String adMemberListForm()
	{
		return "admin/adMemberListForm";
	}
	
	@RequestMapping("gradeMgmt.ad")
	public String adGradeMgmtForm()
	{
		return "admin/adGradeMgmtForm";
	}
}
