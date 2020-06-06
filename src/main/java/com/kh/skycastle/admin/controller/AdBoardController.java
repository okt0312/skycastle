package com.kh.skycastle.admin.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.skycastle.admin.model.service.AdBoardService;
import com.kh.skycastle.cs.model.vo.Notice;

//게시판관리(공지사항,이벤트) 페이지 관련 컨트롤러입니다 
@Controller
public class AdBoardController {
	
	@Autowired
	private AdBoardService adBoService;
	
		//메뉴바에서 공지사항관리 페이지 눌렀을때 이동
		@RequestMapping("noticeMgmt.ad")
		public ModelAndView adNoticeMgmtList(ModelAndView mv){
			
			ArrayList<Notice> list = adBoService.selectNotice();
			
			mv.addObject("list", list).setViewName("admin/adNoticeMgmt");
			return mv;
		}
		
		@RequestMapping("adDetail.bo")
		public ModelAndView selectNoDetail(int bno, ModelAndView mv) {
			
			Notice n = adBoService.selectNoDetail(bno);
			mv.addObject("n", n);
			mv.setViewName("admin/adNoticeDetailView");
			
			return mv;
		}
		
		
		
		
		//메뉴바에서 이벤트관리 페이지 눌렀을때 이동
		@RequestMapping("eventMgmt.ad")
		public String adEventMgmt(){
			return "admin/adEventMgmt";
		}
				
		
}
