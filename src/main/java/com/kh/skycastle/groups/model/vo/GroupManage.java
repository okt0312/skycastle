package com.kh.skycastle.groups.model.vo;


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
public class GroupManage {
	
	private int groupNo;
	private int userNo;
	private String passion;
	private String status;

	// leaderNo 추가
	private int leaderNo;
}
