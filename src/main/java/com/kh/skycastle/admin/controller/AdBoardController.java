package com.kh.skycastle.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdBoardController {

	
		//메뉴바에서 공지사항관리 페이지 눌렀을때
		@RequestMapping("noticeMgmt.ad")
		public String adNoticeMgmt(){
			return "admin/adNoticeMgmt";
		}
		
		//메뉴바에서 이벤트관리 페이지 눌렀을때
		@RequestMapping("eventMgmt.ad")
		public String adEventMgmt(){
			return "admin/adEventMgmt";
		}
				
		
}
