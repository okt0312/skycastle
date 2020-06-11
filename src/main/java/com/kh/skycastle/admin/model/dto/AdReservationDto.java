package com.kh.skycastle.admin.model.dto;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class AdReservationDto {
	
	private String startDate;
	private String endDate;
	private String category;
	private String bookNo;
	private String userId;
	private int userNo;
	private int refNo;
	private String spaceName;
	private String couponCode;
	private String couponName;
	private int totalCost;
	private Date bookEnrollDate;
	private String status;
	private double gradeDiscount;
	private int selNo;

}
