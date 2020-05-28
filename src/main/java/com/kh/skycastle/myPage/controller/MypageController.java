package com.kh.skycastle.myPage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MypageController {
	
	
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
