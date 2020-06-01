package com.kh.skycastle.reservation.model.service;

import com.kh.skycastle.reservation.model.vo.StatusCount;

public interface ReservationService {
	
	//1. 좌석 메인 현재 좌석 현황 카운트  
	StatusCount SeatStatusCount();
}
