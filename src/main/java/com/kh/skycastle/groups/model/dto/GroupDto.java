package com.kh.skycastle.groups.model.dto;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class GroupDto {
	
	private int userNo;
	private int groupNo;
	private String groupTitle;
	private String groupSubtitle;
	private String groupCategory;
	private String changeName;
	private String place;
	private int memberLimit;
	private String status;
	private Date startDate;
	private Date endDate;
}