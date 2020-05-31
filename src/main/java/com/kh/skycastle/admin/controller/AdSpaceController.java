package com.kh.skycastle.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

//공간관리(공간, 좌석, 예약) 관련 페이지 컨트롤러입니다
@Controller
public class AdSpaceController {
	
	//메뉴바에서 공간관리 페이지 눌렀을때 이동
		@RequestMapping("spaceMgmt.ad")
		public String adSpaceMgmt()
		{
			return "admin/adSpaceMgmt";
		}

}
