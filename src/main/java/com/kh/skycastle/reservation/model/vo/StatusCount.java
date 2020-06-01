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
public class StatusCount {
	private int seatAllCount;
	private int seatUsedCount;
	private int seatUnUsedCount;
	private int seatRepairingCount;
}
