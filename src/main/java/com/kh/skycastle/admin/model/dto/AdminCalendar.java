package com.kh.skycastle.admin.model.dto;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class AdminCalendar {
	
	private String userName;
	private Date usedDate;
	private String startTime;
	private String endTime;
}
