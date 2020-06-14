package com.kh.skycastle.groups.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.skycastle.groups.model.service.ReportService;
import com.kh.skycastle.groups.model.vo.Report;

@Controller
public class ReportController {

	@Autowired
	private ReportService repService;
	

	@ResponseBody
	@RequestMapping(value = "insertReport.rp", produces="text/html; charset=UTF-8")
	public String insertReport(Report report) {

		//System.out.println(report);
		String status ="";
		int result = repService.insertReport(report);
		if(result > 0) {
			status = "성공";
		}else {
			status = "실패";
		}
		return status;
	}
}
