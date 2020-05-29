package com.kh.skycastle.cs.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.kh.skycastle.cs.model.service.QnaService;

@Controller
public class QnaController {

	@Autowired 
	private QnaService qService;
	
}
