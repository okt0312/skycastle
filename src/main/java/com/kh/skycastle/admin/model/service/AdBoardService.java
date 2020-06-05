package com.kh.skycastle.admin.model.service;

import java.util.ArrayList;

import com.kh.skycastle.cs.model.vo.Notice;

public interface AdBoardService {

	//공지사항 조회용 서비스
	ArrayList<Notice> selectNotice();
	
	//공지사항 상세조회용 서비스
	Notice selectNotice(int bno);
	
}
