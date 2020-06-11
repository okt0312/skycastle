package com.kh.skycastle.admin.model.dto;

import java.util.List;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class UpdateGradeDto {

	private int gradeCode;
	private String gradeName;
	private int discount;
	private int standard;
	
	private List<UpdateGradeDto> list;
}
