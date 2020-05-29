package com.kh.skycastle.group.model.vo;

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
public class GroupCalendar {
	
	private int calendarNo;
	private int groupNo;
	private String calendarTitle;
	private String calendarContent;
	private Date startDate;
	private Date endDate;
	private String alldayOption;

}
