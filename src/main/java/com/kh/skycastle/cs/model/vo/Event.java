package com.kh.skycastle.cs.model.vo;

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
public class Event {
	
	private int eventNo;
	private String eventTitle;
	private Date eventOpenTime;
	private Date eventCloseTime;
	private Date eventRegisterDate;
	private String eventStatus;
	private String changeName;

}
