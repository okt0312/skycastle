package com.kh.skycastle.admin.controller;

import java.util.ArrayList;

import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.skycastle.admin.model.service.AdQnaService;
import com.kh.skycastle.cs.model.vo.Qna;

@Controller
public class AdQnaController {
	
	@Autowired
	private AdQnaService adqService;
	
	@Autowired
	private JavaMailSender mailSender;
	
	
	@RequestMapping("adQnaForm.ad")
	public String adQnaForm(Model m)
	{
		ArrayList<Qna> list = adqService.selectQnaList();
		m.addAttribute("list", list);
		
		return "admin/adQnaMgmt";
	}
	
	@RequestMapping("answerQna.ad")
	public String answerQna(Qna q, HttpSession session)
	{
		if(q.getMemberYn().equals("Y"))
		{
			int result = adqService.answerQna(q);
			
			if(result > 0)
			{
				session.setAttribute("msg", "답변 작성 완료");
			}
			else
			{
				session.setAttribute("msg", "답변 작성 실패");
			}
			
		}
		else if(q.getMemberYn().equals("N"))
		{
			sendEmail(q);
			
			int result = adqService.answerQna(q);
			
			if(result > 0)
			{
				session.setAttribute("msg", "답변 작성 완료");
			}
			else
			{
				session.setAttribute("msg", "답변 작성 실패");
			}
		}
		
		return "redirect:adQnaForm.ad";
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
	
	
	public void sendEmail(Qna q) {
		
		MimeMessage messege = mailSender.createMimeMessage();
		try {
			messege.setSubject("SKYCASTLE 온라인 문의 답변입니다.");
			messege.setFrom(new InternetAddress("skycastle0504@gmail.com"));
			messege.setText(q.getQnaReply());
			messege.addRecipient(RecipientType.TO, new InternetAddress(q.getEmail()));
			mailSender.send(messege);
		} catch (Exception e) {
			System.out.println(e);
		}
	}
}
