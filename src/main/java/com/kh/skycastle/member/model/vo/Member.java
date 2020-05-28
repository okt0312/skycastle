package com.kh.skycastle.member.model.vo;

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

public class Member {
	private int userNo;
	private String userId;
	private String userPwd;
	private String userName;
	private String birthday;
	private String phone;
	private Date enrollDate;
	private Date modifyDate;
	private String blacklist;
	private String status;
	private Date dropDate;
	private int lastYearUsage;
	private int thisYearUsage;
	private int gradeCode;
	private int redCard;
}
