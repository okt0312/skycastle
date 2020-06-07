package com.kh.skycastle.cs.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.skycastle.cs.model.service.EventService;
import com.kh.skycastle.cs.model.vo.Event;



@Controller
public class EventController {
	
	@Autowired 
	private EventService eService;
	
	@RequestMapping("event.cs")
	public String selectEventList(Model model) {
		
		ArrayList<Event> list = eService.selectEventList();
		
		model.addAttribute("list", list);
		
		return "cs/eventListView";
	}
	

}
