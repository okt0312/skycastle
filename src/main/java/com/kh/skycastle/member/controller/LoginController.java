package com.kh.skycastle.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {

	// NaverLoginBO 
	private NaverLoginBO naverLoginBO;
	private String apiResult = null;
	
	@Autowired
	private void setNaverLoginBO(NaverLoginBO naverLoginBO) {
		this.naverLoginBO = naverLoginBO;
	}
	
	/* 로그인 첫 화면 요청 메소드
	@RequestMapping("loginForm.me")
	public String login(Model model, HttpSession session) {
		
		// 네이버 아이디로 인증 url을 생성하기 위하여 naverLoginBO 클래스의 getAuthorizationUrl 메소드 호출
		String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
		
		System.out.println("네이버" + naverAuthUrl);
		
		// 네이버 
		model.addAttribute("url", naverAuthUrl);
		
		return "member/loginForm.me";
	}
	*/
}
