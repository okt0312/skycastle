package com.kh.skycastle.cs.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.skycastle.cs.model.service.EventService;
import com.kh.skycastle.cs.model.vo.Event;
import com.kh.skycastle.cs.model.vo.Notice;



@Controller
public class EventController {
	
	@Autowired 
	private EventService eService;
	
	@RequestMapping("event.cs")
	public String selectEventList(Model model) {
		
		ArrayList<Event> eventList = eService.selectEventList();
		
		model.addAttribute("eventList", eventList);
		
		return "cs/eventListView";
	}
	
	@RequestMapping("eventDetail.cs")
	public ModelAndView selectEvent(int eno, ModelAndView mv) {
		
		Event e = eService.selectEvent(eno);
		mv.addObject("e", e);
		mv.setViewName("cs/eventDetailView");
		
		return mv;
	}

}
