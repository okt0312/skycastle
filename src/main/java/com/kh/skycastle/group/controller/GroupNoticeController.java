package com.kh.skycastle.group.controller;

import org.springframework.web.bind.annotation.RequestMapping;

public class GroupNoticeController {
	
	@RequestMapping("groupApplyForm.gr")
	public String mygroupList() {
		return "group/groupApplyForm";
	}

}
