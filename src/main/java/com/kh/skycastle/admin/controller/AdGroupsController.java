package com.kh.skycastle.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdGroupsController {
	
	//소모임 조회
	@RequestMapping("groupList.ad")
	public String adGroupList()
	{
		return "admin/adGroupList";
	}
	
	//소모임 개설관리
	@RequestMapping("groupConfirm.ad")
	public String adGroupConfirm()
	{
		return "admin/adGroupConfirm";
	}
	
	//소모임게시판관리
	@RequestMapping("groupBoMgmt.ad")
	public String adGroupBoMgmt()
	{
		return "admin/adGroupBoMgmt";
	}
	
}
