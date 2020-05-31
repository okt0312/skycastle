package com.kh.skycastle.myPage.controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.skycastle.member.model.vo.Member;
import com.kh.skycastle.myPage.model.service.MypageService;


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
	public String updateCheckPwd(Member m, HttpSession session, Model model) {
		
		// System.out.println(m.getUserPwd());
		
		// MypageService pService = new MypageServiceImpl();
		
	     // m에 사용자가 입력한 비밀번호 들어있다.
		 Member memberPwd  =  pService.updateCheckPwd(m); // 멤버 조회만 결과
		 if(memberPwd != null && bCryptPasswordEncoder.matches(m.getUserPwd(), memberPwd.getUserPwd())) { // 비밀번호 일치!!
			 
			 return "myPage/myPageInfoUpdateForm";
			 
		 } else {  // 비밀번호 불일치!!
			 
			 
		
			 model.addAttribute("msg", "비밀번호가 일치하지 않습니다.");
			 return "myPage/myPageInfoUpdateCheck";
		 }
		 
	    
	     
	}
	
	@RequestMapping("update.me") 
	public String updateMember(Member m, Model model, HttpSession session) {
		
		int result = pService.updateMember(m);
		
		if(result > 0) { // 회원정보수정 성공 --> 알럴트
			
			session.setAttribute("loginUser", pService.updateCheckPwd(m));
			session.setAttribute("msg", "회원정보 수정 성공!!");
			
			
			return "myPage/myPageInfoUpdateCheck";
			
		} else { // 회원정보 수정 실패 --> 알럴트
			
			model.addAttribute("msg, 회원 정보수정 실패!!");
			return "myPage/myPageInfoUpdateForm";
			
			
			}
		
	}
	
	
	@RequestMapping("Pwd.me")
	public String Pwd() {
		return "myPage/myPageInfoUpdatePwd";
	}
	
	
	@RequestMapping("upPwd.me")
	public String updatePwd(Member m, Model model, HttpSession session) {
		
		// 현재비밀번호
		// 새로운 비밀번호 (newPwd) 어디로??
		
		int result = pService.updatePwd(m);
			
		
		if(result > 0) {
			session.setAttribute("loginUser", pService.updateCheckPwd(m));
			
			return "myPage/myPageInfoUpdateCheck";
		} else {
			return "myPage/myPageInfoUpdateCheck";
		}
		
	}
	
	
	@RequestMapping("Drop.me")
	public String Drop() {
		return "myPage/myPageInfoDropOutForm";
	}
	
	
	
	@RequestMapping("delete.me")
	public String deleteMember(Member m, Model model) {
		int result = pService.deleteMember(m);
		
		System.out.println(m);
		
		if(result > 0) {
			
			return "redirect:logout.me";
			
		} else {
			 
			model.addAttribute("msg","회원탈퇴실패!!");
			return "myPage/myPageInfoDropOutForm";
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
