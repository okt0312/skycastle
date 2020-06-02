package com.kh.skycastle.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.skycastle.member.model.service.MemberService;
import com.kh.skycastle.member.model.vo.Member;
import com.sun.javafx.collections.MappingChange.Map;


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
	 
	 @RequestMapping("enrollForm.me")
	 public String enrollForm() {
			return "member/enrollForm";
	 }
	
	 @RequestMapping("enrollForm2.me")
	 public ModelAndView enrollForm2(@RequestParam(value="infoAgree", defaultValue="false") Boolean infoAgree) {
			
		 if(!infoAgree) { // 체크박스 동의하지 않을 경우 정보입력 페이지 이동 xxx
			 ModelAndView mv = new ModelAndView("member/enrollForm");
		 	return mv;
		 }
		 	ModelAndView mv = new ModelAndView("member/enrollForm2");
		 	return mv;
		}
	 
	@ResponseBody
	@RequestMapping("idCheck.me")
	public String idCheck(HttpServletRequest request, Model model){
		
		String userId = request.getParameter("userId");
		int count = mService.idCheck(userId);
		
		return String.valueOf(count);
	}
	
	@RequestMapping("insert.me")
	public String insertMember(Member m, Model model, HttpSession session) {
		
		// 암호화작업
		String encPwd = bcryptPasswordEncoder.encode(m.getUserPwd());
		//System.out.println("암호화후 : " + encPwd);
		
		m.setUserPwd(encPwd);
		
		int result = mService.insertMember(m);
		
		if(result > 0) { // 회원가입 성공
			
			return "member/enrollComplete";		
			
		}else { // 회원가입 실패
			
			model.addAttribute("msg", "회원가입 실패!!");
			return "common/errorPage";
		}
			
	}
	
	 @RequestMapping("searchPwd.me")
	 public String searchPwd() {
			return "member/searchPwd";
	}
}
