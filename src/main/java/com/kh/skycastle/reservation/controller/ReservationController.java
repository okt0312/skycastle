package com.kh.skycastle.reservation.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ReservationController {
	
	@RequestMapping("seatMain.re")
	public String seatMain(){
		return "reservation/seatMain";
	}
	
	@RequestMapping("seatPayDetail.re")
	public String seatPayDetail(){
		return "reservation/seatPayDetail";
	}

	
}
