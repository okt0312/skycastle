package com.kh.skycastle.admin.model.service;

import java.util.ArrayList;

import com.kh.skycastle.admin.model.dto.AdReservationDto;

public interface AdReservationService {
	
	ArrayList<AdReservationDto>selectFormList(String selNo);

}
