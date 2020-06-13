package com.kh.skycastle.admin.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.skycastle.admin.model.dto.AdReservationDto;
import com.kh.skycastle.admin.model.service.AdReservationService;

@Controller
public class AdReservationController {

	@Autowired
	private AdReservationService adReservationService;
	
	@RequestMapping("reservation.ad")
	public String reservationForm(Model m, String selNo)
	{
		ArrayList<AdReservationDto> list = adReservationService.selectFormList(selNo);
		
		m.addAttribute("selNo", selNo);
		m.addAttribute("list", list);
		
		return "admin/adReservationForm";
	}
}
