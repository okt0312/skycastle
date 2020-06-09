package com.kh.skycastle.admin.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.skycastle.admin.model.dto.AdminCalendar;
import com.kh.skycastle.admin.model.service.AdMainServiceImpl;

@Controller
public class AdminController {
	
	@Autowired
	private AdMainServiceImpl adMainService;
	
	@RequestMapping("adminMain.ad")
	public String adminMainForm(Model m)
	{
		ArrayList<AdminCalendar> calList = adMainService.selectCalList();
		m.addAttribute("calList", calList);
		return "admin/adMain";
	}
}
