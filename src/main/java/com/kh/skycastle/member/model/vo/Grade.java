package com.kh.skycastle.member.model.vo;

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
public class Grade {

	private int gradeCode;
	private String gradeName;
	private int standard;
	private double discount;
	
}
