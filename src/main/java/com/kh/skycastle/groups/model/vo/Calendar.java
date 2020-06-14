package com.kh.skycastle.groups.model.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class Calendar {

	private int calendarNo;
	private int groupNo;
	private String calendarTitle;
	private String startDate;
	private String endDate;
	private String alldayOption;
}
