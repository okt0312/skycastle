package com.kh.skycastle.myPage.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.skycastle.member.model.service.MemberServiceImpl;
import com.kh.skycastle.member.model.vo.Member;
import com.kh.skycastle.myPage.model.service.MypageService;
import com.kh.skycastle.myPage.model.service.MypageServiceImpl;


@Controller
public class MypageController {
	
	@Autowired
	private MypageService pService; 
	
	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;
	
	
	@RequestMapping("myPage.my")
	 public String myPage() {
		 return "myPage/myPageSpaceReservation";
	 }
	
	
	@RequestMapping("Coupon.my")
	public String Coupon() {
		return "myPage/myPageCoupon";
	}
	
	
	@RequestMapping("PwdCheck.my")
	public String PwdCheck() {
	
		
		return "myPage/myPageInfoUpdateCheck";
	}
	
	
	@RequestMapping("PwdCheckk.my")
	public ModelAndView updateCheckPwd(Member m, HttpSession session, ModelAndView mv) {
		
		// System.out.println(m.getUserPwd());
		
		// MypageService pService = new MypageServiceImpl();
		
	     // m에 사용자가 입력한 비밀번호 들어있다.
		 Member memberPwd  =  pService.updateCheckPwd(m); // 멤버 조회만 결과
		 
		 
		 
		 
		 if(memberPwd  && bCryptPasswordEncoder.matches(m.getUserPwd(), memberPwd.getUserPwd())) { // 비밀번호 일치!!
			 
			 session.setAttribute("memberPwd", memberPwd);
			 mv.setViewName("redirect:/");
			 
		 } else {  // 비밀번호 불일치!!
			 
		 }
		 
	    
	     
	}
	
	@RequestMapping("OneonOne.my")
	public String OneonOne() {
		return "myPage/myPageOneOnOneList";
	}
	
	@RequestMapping("seat.my")
	public String seat() {
		return "myPage/myPageSeatReservation";
	}
	
	@RequestMapping("myPageDetail.my")
	public String SpaceDetail() {
		return "myPage/myPageSpaceReservationDetail";
	}
	
}
