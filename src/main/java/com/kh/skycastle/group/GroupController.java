package com.kh.skycastle.group;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GroupController {

	@RequestMapping("groupList.gr")
	public String groupList()
	{
		return "group/groupList";
	}
}
