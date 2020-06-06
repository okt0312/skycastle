package com.kh.skycastle.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdSalesController {

	@RequestMapping("adSalesForm.ad")
	public String adSalesMgmtForm()
	{
		return "admin/adSalesMgmtForm";
	}
}
