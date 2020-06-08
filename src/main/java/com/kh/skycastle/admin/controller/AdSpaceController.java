package com.kh.skycastle.admin.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.skycastle.admin.model.service.AdSpaceService;
import com.kh.skycastle.reservation.model.vo.Space;

//공간관리(공간, 좌석, 예약) 관련 페이지 컨트롤러입니다
@Controller
public class AdSpaceController {
	
	@Autowired
	private AdSpaceService adSpService;
	
	//메뉴바에서 공간관리 페이지 눌렀을때 이동
	@RequestMapping("spaceMgmt.ad")
	public ModelAndView adSpaceMgmt(ModelAndView mv){
			
	ArrayList<Space> list = adSpService.selectSpace();
			
	mv.addObject("list", list).setViewName("admin/adSpaceMgmt");
	return mv;
		}
}
