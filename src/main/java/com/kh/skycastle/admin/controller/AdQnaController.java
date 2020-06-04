package com.kh.skycastle.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdQnaController {
	
	@RequestMapping("adQnaForm.ad")
	public String adQnaForm()
	{
		return "admin/adQnaMgmt";
	}
}
