package com.kh.skycastle.reservation.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.kh.skycastle.common.model.vo.PageInfo;
import com.kh.skycastle.common.template.Pagination;
import com.kh.skycastle.coupon.model.vo.Coupon;
import com.kh.skycastle.member.model.vo.Grade;
import com.kh.skycastle.member.model.vo.Member;
import com.kh.skycastle.reservation.model.service.ReservationService;
import com.kh.skycastle.reservation.model.vo.Reservation;
import com.kh.skycastle.reservation.model.vo.ReservationTime;
import com.kh.skycastle.reservation.model.vo.Seat;
import com.kh.skycastle.reservation.model.vo.Space;

@Controller
public class ReservationController {
	
	@Autowired
	private ReservationService rService;
	
	@RequestMapping("seatMain.re")
	public String seatMain(){	
		return "reservation/seatMain";
	}

	@RequestMapping("seatRdetail.re")
	public String seatRdetail(int seatNo,Model model, HttpSession session){
		ArrayList<Coupon> couponList = new ArrayList<>();
		
		Seat seat = new Seat();
		
		
		
		Member loginUser =  (Member)session.getAttribute("loginUser");
		seat = rService.selectSeat(seatNo);
		if(loginUser != null) {
			int userNo = loginUser.getUserNo();
			couponList = rService.selectCouponList(userNo);
			
		}
		
		//System.out.println(seat);
		//System.out.println(couponList);
		
		model.addAttribute("couponList",couponList);
		model.addAttribute("seat",seat);
		return "reservation/seatReservationDetail";
	}
	
	@RequestMapping("seatPayDetail.re")
	public String seatPayDetail(Reservation reserv,Coupon coupon,Model model){
		Grade grade = new Grade(); 
		grade = rService.selectGrade(reserv.getUserNo());
//		System.out.println(grade);
//		System.out.println(reserv);
//		System.out.println(coupon);
//		
		model.addAttribute("grade",grade);
		model.addAttribute("reservation",reserv);
		model.addAttribute("coupon",coupon);
		
		return "reservation/seatPayDetail";
	}
	
	@RequestMapping("reservInsert.re")
	public String seatPayDetailInsert(Reservation reservation, Model model){
		reservation.setCategory("1");
		//System.out.println(reservation);
		int result = rService.insertReservation(reservation);
		if(result > 0 ) {
			return "reservation/ReservationComplate";
		}else {
			 model.addAttribute("msg", "예약 실패");
	         return "common/errorPage";
		}
		
	}
	
	

	
	@ResponseBody
	@RequestMapping(value="SeatStatus.re",produces="aplication/json; charset=utf-8")
	public String seatStatus(){
		
		ArrayList<Reservation> status = rService.seatStatus();
		//System.out.println(status);
		return new Gson().toJson(status);
	}
	
	@ResponseBody
	@RequestMapping(value="selectSeatReservationTime.re",produces="aplication/json; charset=utf-8")
	public String selectSeatReservationTime(int seatNo){
		
		ArrayList<Reservation> ReservationTime = rService.selectSeatReservationTime(seatNo);
		//System.out.println(status);
		return new Gson().toJson(ReservationTime);
	}
	
	//공간 예약 파트
	
	
	@RequestMapping("spaceMain.re")
	public String spaceMain(int currentPage, Model model){	
		
		int spaceCount = rService.selectSpaceCount();
		int pageLimit = 10;
		int boardLimit = 8;
		PageInfo pi = Pagination.getPageInfo(spaceCount, currentPage, pageLimit, boardLimit);
		
		ArrayList<Space> spaceList = rService.selectSpaceList(pi);
		
		model.addAttribute("pi",pi);
		model.addAttribute("spaceList", spaceList);
		//System.out.println(pi);
		//System.out.println(spaceList);
		return "reservation/spaceMain";
	}
	
	
	
	@ResponseBody
	@RequestMapping(value="spaceSearchMain.re",produces="aplication/json; charset=utf-8")
	public String spaceSearchList(int keyword){
		
		ArrayList<Space> spaceSearchList = rService.spaceSearchList(keyword);
		//System.out.println(status);
		return new Gson().toJson(spaceSearchList);
	}
	
	
	@RequestMapping("spaceReservationDetail.re")
	public String spaceReservationDetail(int spaceNo, Model model,HttpSession session){	
		ArrayList<Coupon> couponList = new ArrayList<>();
		
		Space space = new Space();
		

		Member loginUser =  (Member)session.getAttribute("loginUser");
		space = rService.selectSpace(spaceNo);
		if(loginUser != null) {
			int userNo = loginUser.getUserNo();
			couponList = rService.selectCouponList(userNo);
			
		}
		
		//System.out.println(space);
		//System.out.println(couponList);
		
		model.addAttribute("couponList",couponList);
		model.addAttribute("space",space);
		
		return "reservation/spaceReservationDetail";
	}
	
	@RequestMapping("spacePayDetail.re")
	public String spacePayDetail(Reservation reserv,Coupon coupon,Model model){
		
		Grade grade = new Grade(); 
		grade = rService.selectGrade(reserv.getUserNo());
//		System.out.println(grade);
//		System.out.println(reserv);
//		System.out.println(coupon);
		String[] usedDate = reserv.getUsedDate().split(",");
		String[] startTime = reserv.getStartTime().split(",");
		String[] endTime = reserv.getEndTime().split(",");
		model.addAttribute("grade",grade);
		model.addAttribute("reservation",reserv);
		model.addAttribute("coupon",coupon);
		model.addAttribute("usedDate",usedDate);
		model.addAttribute("startTime",startTime);
		model.addAttribute("endTime",endTime);
		
		return "reservation/spacePayDetail";
	}
	
	@RequestMapping("reservSpaceInsert.re")
	public String spacePayDetailInsert(Reservation reservation, Model model){
		
		reservation.setCategory("2");
		//System.out.println(reservation);
		int result = rService.insertSpaceReservation(reservation);
		if(result > 0 ) {
			return "reservation/ReservationComplate";
		}else {
			 model.addAttribute("msg", "예약실패");
	         return "common/errorPage";
		}
		
	}
	
	

	
	  

	
}
