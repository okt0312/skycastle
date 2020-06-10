package com.kh.skycastle.admin.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.skycastle.admin.model.service.AdQnaService;
import com.kh.skycastle.cs.model.vo.Qna;

@Controller
public class AdQnaController {
	
	@Autowired
	private AdQnaService adqService;
	
	@RequestMapping("adQnaForm.ad")
	public String adQnaForm(Model m)
	{
		ArrayList<Qna> list = adqService.selectQnaList();
		System.out.println(list);
		m.addAttribute("list", list);
		
		return "admin/adQnaMgmt";
	}
	
	@RequestMapping("deleteQna.ad")
	public String deleteQna(Qna q, HttpSession session)
	{
		int result = adqService.deleteQna(q);
		if(result > 0)
		{
			session.setAttribute("msg", "문의 삭제 성공");
		}
		else
		{
			session.setAttribute("msg", "문의 삭제 실패");
		}
		return "redirect:adQnaForm.ad";
	}
}
