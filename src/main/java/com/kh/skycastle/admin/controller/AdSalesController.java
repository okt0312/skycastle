package com.kh.skycastle.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.skycastle.admin.model.dto.AdReservationDto;

@Controller
public class AdSalesController {

	@RequestMapping("adSalesForm.ad")
	public String adSalesMgmtForm()
	{
		return "admin/adSalesMgmtForm";
	}
	
	@RequestMapping("selectSalesList.ad")
	public ModelAndView adSelectSalesList(AdReservationDto adr, ModelAndView mv)
	{
		System.out.println(adr);
		
		
		return mv;
	}
}
