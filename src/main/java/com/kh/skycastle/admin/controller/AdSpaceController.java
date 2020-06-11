package com.kh.skycastle.admin.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.skycastle.admin.model.service.AdSpaceService;
import com.kh.skycastle.reservation.model.vo.Seat;
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
	
	
	//공간현황 모달에서 사용불가로 전환할때
		@ResponseBody
		@RequestMapping(value = "unusableSpace.ad", produces = "text/html; charset=utf-8")
		public String adUnusableSpace(int sno, Model model)
		{	
			int result = adSpService.adUnusableSpace(sno);
			
			if(result > 0)
			{
				return "공간 사용불가 전환 성공";
			}
			else
			{
				return "공간 사용불가 전환 실패";
			}
		}
	
		
		//공간현황 모달에서 사용가능으로 전환할때
		@ResponseBody
		@RequestMapping(value = "usableSpace.ad", produces = "text/html; charset=utf-8")
		public String adUsableSpace(int sno, Model model)
		{	
			int result = adSpService.adUsableSpace(sno);
			
			if(result > 0)
			{
				return "공간 사용가능 전환 성공";
			}
			else
			{
				return "공간 사용가능 전환 실패";
			}
		}
		
		
		
		
	
	//메뉴바 -> 좌석현황
		@RequestMapping("seatMgmt.ad")
		public String adSeatMgmt() {
			return ("admin/adSeatMgmt");
		}
		
	//좌석 상태 변경 (사용가능 사용불가)
		@ResponseBody
		@RequestMapping(value = "seatStatusMgmt.ad", produces = "text/html; charset=utf-8")
		public String adSeatStatusMgmt(Seat seat, Model model)
		{	
			int result = adSpService.adSeatStatusMgmt(seat);
			
			if(result > 0)
			{
				return "redirect:seatMgmt.ad";
			}
			else
			{
				return "좌석 상태변경 실패";
			}
		}
		
		
	//좌석 상세
	
}
