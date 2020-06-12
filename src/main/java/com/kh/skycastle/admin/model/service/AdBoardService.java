package com.kh.skycastle.admin.model.service;

import java.util.ArrayList;

import com.kh.skycastle.common.model.vo.Attachment;
import com.kh.skycastle.cs.model.vo.Event;
import com.kh.skycastle.cs.model.vo.Notice;

public interface AdBoardService {

	//공지사항 조회용 서비스
	ArrayList<Notice> selectNotice();
	
	//공지사항 상세조회용 서비스
	Notice selectNoDetail(int bno);
	
	//공지사항 등록용 서비스
	int insertAdNotice(Notice n);
	
	//공지사항 수정용 서비스
	int updateAdNotice(Notice n);
	
	//공지사항 삭제용 서비스
	int deleteAdNotice(int noticeNo);
	
	
	
	
	
	//이벤트 조회용 서비스
	ArrayList<Event> selectEvent();
	
	//이벤트 상세조회용 서비스
	ArrayList<Event> adSelectEvent(int eno);
		
	//이벤트 등록용 서비스
	int insertAdEvent(Event e, Attachment[] at);
	
	//이벤트 수정용 서비스
	int updateAdEvent(Event e, Attachment at);
	
	//이벤트 삭제용 서비스
	int deleteAdEvent(Event e);
	
	
}
