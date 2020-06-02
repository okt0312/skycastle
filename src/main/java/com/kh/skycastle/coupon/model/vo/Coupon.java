package com.kh.skycastle.coupon.model.vo;

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

public class Coupon {
	private String couponCode;
	private String couponName;
	private Date startDate;
	private int expirationPeriod;
	private double discountRate;

}
