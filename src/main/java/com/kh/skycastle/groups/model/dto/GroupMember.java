package com.kh.skycastle.groups.model.dto;

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
public class GroupMember {

	private int userNo;
	private int groupNo;
	private String userId;
	private String userName;
	private String passion;
	private String status;
	private int leaderNo;
	
}
