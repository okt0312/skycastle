package com.kh.skycastle.reservation.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Reservation {
	private int bookNo;
	private int userNo;
	private String category;
	private int refNo;
	private String couponCode;
	private int totalCost;
	private Date bookEnrollDate;
	private String status; //관리자페이지에서 확인 상태용
	private double gradeDiscount;
	private Date usedDate;
	private String startTime;
	private String endTime;
	
	private int seatNo; //좌석현황 조회시 사용
	private String seatStatus; // 좌석 사용가능/불가능 확인용
}
