package com.kh.skycastle.admin.model.service;

import java.util.ArrayList;

import com.kh.skycastle.reservation.model.vo.Space;

public interface AdSpaceService {
	//공간 조회용 서비스
	ArrayList<Space> selectSpace();
}
