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
	private String status;
	private int gradeDiscount;
}
