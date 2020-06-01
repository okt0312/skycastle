package com.kh.skycastle.reservation.model.vo;

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
public class Space {
	private int spaceNo;
	private String spaceName;
	private int personnel;
	private int spacePrice;
	private String status;
}
