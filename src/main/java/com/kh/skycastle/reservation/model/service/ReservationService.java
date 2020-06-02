package com.kh.skycastle.reservation.model.service;

import java.util.ArrayList;

import com.kh.skycastle.coupon.model.vo.Coupon;
import com.kh.skycastle.reservation.model.vo.StatusCount;

public interface ReservationService {
	
	//1. 좌석 메인 현재 좌석 현황 카운트  
	StatusCount seatStatusCount();
	
	//2. 좌석 예약시 사용가능 쿠폰 조회
	ArrayList<Coupon> selectCouponList(int userNo);
}
