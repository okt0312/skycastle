package com.kh.skycastle.cs.model.service;

import java.util.ArrayList;

import com.kh.skycastle.common.model.vo.PageInfo;
import com.kh.skycastle.cs.model.vo.Notice;

public interface NoticeService {

	// 공지사항 리스트 조회 (총 갯수)
	int selectListCount();
	
	// 요청한 페이지에 보여질 공지사항 리스트 조회
	ArrayList<Notice> selectList(PageInfo pi);
	
	// 공지사항 상세조회
	Notice selectNotice(int nno);
}
