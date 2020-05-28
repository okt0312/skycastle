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
	
	
	
}
