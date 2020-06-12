package com.kh.skycastle.groups.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ChatController {

	@RequestMapping("chatForm.gr")
	public String chatForm()
	{
		return "groups/chatForm";
	}
	
}
