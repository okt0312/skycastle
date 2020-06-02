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
import com.kh.skycastle.member.model.vo.Member;
import com.kh.skycastle.reservation.model.service.ReservationService;
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
		
		Member loginUser =  (Member)session.getAttribute("loginUser");
		int userNo = loginUser.getUserNo();
		ArrayList<Coupon> couponList = rService.couponList(userNo);
		
		model.addAttribute("seatNo",seatNo);
		return "reservation/seatReservationDetail";
	}
	
	@RequestMapping("seatPayDetail.re")
	public String seatPayDetail(){
		return "reservation/seatPayDetail";
	}
	
	

	@ResponseBody
	@RequestMapping(value="SeatStatusCount.re",produces="aplication/json; charset=utf-8")
	public String SeatStatusCount(){
		
		StatusCount sc = rService.seatStatusCount();
		
		return new Gson().toJson(sc);
	}

	
}
