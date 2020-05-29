package com.kh.skycastle.myPage.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
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
	public String updateCheckPwd(Member m, HttpSession session, ModelAndView mv) {
		
		// System.out.println(m.getUserPwd());
		
		// MypageService pService = new MypageServiceImpl();
		
	     // m에 사용자가 입력한 비밀번호 들어있다.
		 Member memberPwd  =  pService.updateCheckPwd(m); // 멤버 조회만 결과
		 if(memberPwd != null && bCryptPasswordEncoder.matches(m.getUserPwd(), memberPwd.getUserPwd())) { // 비밀번호 일치!!
			 
			 return "myPage/myPageInfoUpdateForm";
			 
		 } else {  // 비밀번호 불일치!!
			 return "/";
		 }
		 
	    
	     
	}
	
	@RequestMapping("update.me") 
	public String updateMember(Member m) {
		
		

		int result = pService.updateMember(m);
		
		if(result > 0) { // 회원정보수정 성공 --> 알럴트
			
			

			
		} else { // 회원정보 수정 실패 --> 알럴트
			
			 response.setContentType("text/html; charset=UTF-8");
	         
	         PrintWriter out = response.getWriter();
	         
	         out.println("<script>alert('공지사항이 성공적으로 등록되었습니다'); location.href='/Meister/imNoticeBlist.nom';</script>");
	         out.flush();

	        		 
		
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
