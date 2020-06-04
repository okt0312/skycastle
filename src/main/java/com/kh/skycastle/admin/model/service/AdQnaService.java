package com.kh.skycastle.admin.model.service;

import java.util.ArrayList;

import com.kh.skycastle.cs.model.vo.Qna;

public interface AdQnaService {
	
	// 문의 전체 조회
	ArrayList<Qna> selectQnaList();
}
