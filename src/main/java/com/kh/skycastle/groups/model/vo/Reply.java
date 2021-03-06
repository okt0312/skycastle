package com.kh.skycastle.groups.model.vo;

import java.sql.Timestamp;

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
public class Reply {
	
	private int replyNo;
	private String replyContent;
	private int noticeNo;
	private int userNo;
	private Timestamp uploadDate;
	private String status;
	private String userName;

}
