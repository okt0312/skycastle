package com.kh.skycastle.cs.model.service;

import java.util.ArrayList;

import com.kh.skycastle.cs.model.vo.Event;

public interface EventService {

	// 요청한 페이지에 보여질 공지사항 리스트 조회
	ArrayList<Event> selectList();
	
	// 이벤트 상세 조회 
	Event selectEvent(int eno);
	
}
