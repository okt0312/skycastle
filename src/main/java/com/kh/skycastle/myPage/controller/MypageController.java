package com.kh.skycastle.myPage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MypageController {
	
	
	@RequestMapping("myPage.bo")
	 public String myPage() {
		 return "myPage/myPageSpaceReservation";
	 }
	
	
	@RequestMapping("Coupon.bo")
	public String Coupon() {
		return "myPage/myPageCoupon";
	}
	
	
	@RequestMapping("PwdCheck.bo")
	public String PwdCheck() {
		return "myPage/myPageInfoUpdateCheck";
	}
	
	@RequestMapping("OneonOne.bo")
	public String OneonOne() {
		return "myPage/myPageOneOnOneList";
	}
	
}
