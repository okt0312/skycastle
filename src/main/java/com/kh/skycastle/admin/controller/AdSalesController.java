package com.kh.skycastle.admin.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.skycastle.admin.model.dto.AdReservationDto;
import com.kh.skycastle.admin.model.dto.SalesChart;
import com.kh.skycastle.admin.model.service.AdSalesService;

@Controller
public class AdSalesController {
	
	@Autowired
	private AdSalesService adsService;

	@RequestMapping("adSalesForm.ad")
	public ModelAndView adSalesMgmtForm(ModelAndView mv)
	{
		ArrayList<SalesChart> list = adsService.selectSalesChart();
		System.out.println(list);
		mv.addObject("chartList", list).setViewName("admin/adSalesMgmtForm");
		return mv;
	}
	
	@RequestMapping("selectSalesList.ad")
	public ModelAndView adSelectSalesList(AdReservationDto adr, ModelAndView mv)
	{
		ArrayList<AdReservationDto> list = adsService.adSelectSalesList(adr);
		
		int sumCost = 0;
		
		for(AdReservationDto obj : list)
		{
			sumCost += obj.getTotalCost();
		}
		mv.addObject("list", list);
		mv.addObject("adr", adr);
		mv.addObject("sumCost", sumCost);
		mv.setViewName("admin/adSalesMgmtForm");

		return mv;
	}
}
