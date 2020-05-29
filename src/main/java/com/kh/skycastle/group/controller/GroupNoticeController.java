package com.kh.skycastle.group.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GroupNoticeController {
	
	@RequestMapping("groupApplyForm.gr")
	public String groupApplyForm() {
		return "groups/groupApplyForm";
	}

}
