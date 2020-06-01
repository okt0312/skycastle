package com.kh.skycastle.reservation.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
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
	
	@RequestMapping("seatPayDetail.re")
	public String seatPayDetail(){
		return "reservation/seatPayDetail";
	}
	

	@ResponseBody
	@RequestMapping(value="SeatStatusCount.re",produces="aplication/json; charset=utf-8")
	public String SeatStatusCount(){
		
		StatusCount sc = rService.SeatStatusCount();
		
		return new Gson().toJson(sc);
	}

	
}
