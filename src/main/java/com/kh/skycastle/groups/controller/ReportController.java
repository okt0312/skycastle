package com.kh.skycastle.groups.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.skycastle.groups.model.vo.Report;

@Controller
public class ReportController {
	@ResponseBody
	@RequestMapping(value = "insertReport.rp", produces="text/html; charset=UTF-8")
	public void insertReport(Report report) {

		System.out.println(report);
		
		return;
	}
}
