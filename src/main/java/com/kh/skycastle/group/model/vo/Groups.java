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
public class Groups {
	
	private int groupNo;
	private int leaderNo;
	private String groupTitle;
	private String groupSubtitle;
	private String groupCategory;
	private String place;
	private int gradeLimit;
	private int memberLimit;
	private String status;
	private Date startDate;
	private Date endDate;
	
	private String thumbnail;

}
