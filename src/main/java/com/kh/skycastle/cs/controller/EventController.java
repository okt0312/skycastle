package com.kh.skycastle.cs.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.kh.skycastle.cs.model.service.EventService;


@Controller
public class EventController {
	
	@Autowired 
	private EventService eService;
	
	
	

}
