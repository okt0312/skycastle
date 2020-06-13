package com.kh.skycastle.admin.model.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class EventDto {
	
	private String eventNo;
	private String thumbChangeName;
	private String detailChangeName;
	private String inputThumb;
	private String inputDetail;
	private int fileLevel;
}
