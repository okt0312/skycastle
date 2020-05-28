package com.kh.skycastle.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.skycastle.member.model.service.MemberService;
import com.kh.skycastle.member.model.vo.Member;


@Controller
public class MemberController {
	
	@Autowired
	private MemberService mService;
	
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;

	@RequestMapping("loginForm.me")
	public String loginForm()
	{
		return "member/loginForm";
	}
	
	@RequestMapping("login.me")
	public String loginMember(Member m, HttpSession session, Model model)
	{
        Member loginUser = mService.loginMember(m);
        
        if(loginUser != null && bcryptPasswordEncoder.matches(m.getUserPwd(), loginUser.getUserPwd()))
        {
            session.setAttribute("loginUser", loginUser);
            
            return "redirect:/";
        }
        else
        {
            model.addAttribute("msg", "로그인 실패");
            return "common/errorPage";
        }
	}
	
	 @RequestMapping("logout.me")
	    public String logoutMember(HttpSession session) 
	    {
	        session.invalidate();
	        return "redirect:/";
	    }
}
