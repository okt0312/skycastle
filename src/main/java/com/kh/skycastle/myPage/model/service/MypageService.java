package com.kh.skycastle.myPage.model.service;

import com.kh.skycastle.member.model.vo.Member;

public interface MypageService {
	
	// 1.  개인정보 수정 전 비밀번호 확인용 서비스
	String updateCheckPwd(String userId, String userPwd);
	
	
}
