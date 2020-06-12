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
public class Chat {
	
	private String chatName;
	private String chatContent;
	private Date chatTime;
	
}
