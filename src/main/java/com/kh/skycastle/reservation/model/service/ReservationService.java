package com.kh.skycastle.reservation.model.service;

import java.util.ArrayList;

import com.kh.skycastle.coupon.model.vo.Coupon;
import com.kh.skycastle.member.model.vo.Grade;
import com.kh.skycastle.reservation.model.vo.Reservation;
import com.kh.skycastle.reservation.model.vo.Seat;
import com.kh.skycastle.reservation.model.vo.StatusCount;

public interface ReservationService {
	
	//1. 좌석 메인 현재 좌석 현황 카운트  
	StatusCount seatStatusCount();
	
	//2. 좌석 예약시 사용가능 쿠폰 조회
	ArrayList<Coupon> selectCouponList(int userNo);
	
	//3. 회원 등급 조회 
	Grade selectGrade(int userNo);
	
	//4. 좌석 정보 조회 
	Seat selectSeat(int userNo);
	
	//5. 좌석 예약정보 인설트
	int insertReservation(Reservation reservation);
	
	
}
