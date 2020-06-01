package com.kh.skycastle.cs.model.service;

import com.kh.skycastle.cs.model.vo.Qna;

public interface QnaService {
	
	int insertNonMemberInquiry(Qna q);
	
	int insertMemberInquiry(Qna q);

}
