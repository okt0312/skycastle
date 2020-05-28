package com.kh.skycastle.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdSpaceController {
	
	//메뉴바에서 공간관리 페이지 눌렀을때
		@RequestMapping("spaceMgmt.ad")
		public String adSpaceMgmt()
		{
			return "admin/adSpaceMgmt";
		}

}
