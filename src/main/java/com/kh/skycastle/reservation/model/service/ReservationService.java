package com.kh.skycastle.reservation.model.service;

import java.util.ArrayList;

import com.kh.skycastle.common.model.vo.PageInfo;
import com.kh.skycastle.coupon.model.vo.Coupon;
import com.kh.skycastle.member.model.vo.Grade;
import com.kh.skycastle.reservation.model.vo.Reservation;
import com.kh.skycastle.reservation.model.vo.Seat;
import com.kh.skycastle.reservation.model.vo.Space;

public interface ReservationService {
	
	//1. 좌석 메인 현재 좌석 현황 
	ArrayList<Reservation> seatStatus();
	
	//2. 좌석 예약시 사용가능 쿠폰 조회
	ArrayList<Coupon> selectCouponList(int userNo);
	
	//3. 회원 등급 조회 
	Grade selectGrade(int userNo);
	
	//4. 좌석 정보 조회 
	Seat selectSeat(int seatNo);
	
	//5. 좌석 예약정보 인설트
	int insertReservation(Reservation reservation);
	
	//6. 좌석별 해당날짜 예약시간조회
	ArrayList<Reservation> selectSeatReservationTime(int seatNo);
	
	//공간쪽 시작
	
	//7. 공간 갯수 카운트 
	int selectSpaceCount();
	
	//8. 공간 리스트 조회
	ArrayList<Space> selectSpaceList(PageInfo pi);
	
	//9. 공간 인원별 검색 리스트 조회
	ArrayList<Space> spaceSearchList(int keyword);
	
	//10. 공간 정보 조회
	Space selectSpace(int spaceNo);
	
	//11. 공간 예약 정보 인설트 
	int insertSpaceReservation(Reservation reservation);
}
