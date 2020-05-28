package com.kh.skycastle.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdGroupsController {
	
	//메뉴바에서 소모임 조회 페이지 눌렀을때
	@RequestMapping("groupList.ad")
	public String adGroupList()
	{
		return "admin/adGroupList";
	}
	
	//메뉴바에서 소모임 개설관리 페이지 눌렀을때
	@RequestMapping("groupConfirm.ad")
	public String adGroupConfirm()
	{
		return "admin/adGroupConfirm";
	}
	
	//메뉴바에서 소모임 게시판관리 페이지 눌렀을때
	@RequestMapping("groupBoMgmt.ad")
	public String adGroupBoMgmt()
	{
		return "admin/adGroupBoMgmt";
	}
	
}
