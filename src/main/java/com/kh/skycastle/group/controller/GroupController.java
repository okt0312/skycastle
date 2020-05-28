package com.kh.skycastle.group.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GroupController {

	@RequestMapping("groupList.gr")
	public String groupList() {
		return "groups/groupList";
	}
	
	
	@RequestMapping("mygroupList.gr")
	public String mygroupList() {
		return "myPage/myPageGroupListNow";
	}
	
}