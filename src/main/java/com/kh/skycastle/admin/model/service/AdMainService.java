package com.kh.skycastle.admin.model.service;

import java.util.ArrayList;

import com.kh.skycastle.admin.model.dto.AdminCalendar;
import com.kh.skycastle.admin.model.dto.MainCount;

public interface AdMainService {

	ArrayList<AdminCalendar> selectCalList();
	
	MainCount selectCount();
	
}
