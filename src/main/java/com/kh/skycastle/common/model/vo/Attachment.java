package com.kh.skycastle.common.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;


@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Attachment {

	private int fileNo;
	private String groupCategory;
	private int refBno;
	private String changeName;
	private Date updateDate;
	private int fileLevel;
	private String status;
}
