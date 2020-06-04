package com.kh.skycastle.groups.model.vo;

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
public class Report {
	
	private int reportNo;
	private int replyNo;
	private int reporterNo;
	private String reportContent;
	private Date reportDate;
	private String status;
	private String userId;
	private int redcard;

}
