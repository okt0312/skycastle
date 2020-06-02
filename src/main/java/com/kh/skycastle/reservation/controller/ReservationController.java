package com.kh.skycastle.reservation.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.kh.skycastle.coupon.model.vo.Coupon;
import com.kh.skycastle.member.model.vo.Grade;
import com.kh.skycastle.member.model.vo.Member;
import com.kh.skycastle.reservation.model.service.ReservationService;
import com.kh.skycastle.reservation.model.vo.Reservation;
import com.kh.skycastle.reservation.model.vo.Seat;
import com.kh.skycastle.reservation.model.vo.StatusCount;

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
		System.out.println(grade);
		System.out.println(reserv);
		System.out.println(coupon);
		
		model.addAttribute("grade",grade);
		model.addAttribute("reserv",reserv);
	
		
		return "reservation/seatPayDetail";
	}
	
	

	@ResponseBody
	@RequestMapping(value="SeatStatusCount.re",produces="aplication/json; charset=utf-8")
	public String SeatStatusCount(){
		
		StatusCount sc = rService.seatStatusCount();
		
		return new Gson().toJson(sc);
	}

	
}
