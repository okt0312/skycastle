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
public class GroupNotice {
	
	private int gnoticeNo;
	private int groupNo;
	private String gnoticeTitle;
	private String gnoticeContent;
	private Date enrollDate;
	private String status;
	private int count;
	private String groupTitle;

}
