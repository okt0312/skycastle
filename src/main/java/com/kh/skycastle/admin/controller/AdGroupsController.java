package com.kh.skycastle.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdGroupsController {

	@RequestMapping("groupList.ad")
	public String adGroupList()
	{
		return "admin/adGroupList";
	}
	
	@RequestMapping("groupConfirm.ad")
	public String adGroupConfirm()
	{
		return "admin/adGroupConfirm";
	}
	
	@RequestMapping("groupBoMgmt.ad")
	public String adGroupBoMgmt()
	{
		return "admin/adGroupBoMgmt";
	}
	
}
