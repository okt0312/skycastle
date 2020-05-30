package com.kh.skycastle.myPage.model.service;

import com.kh.skycastle.member.model.vo.Member;

public interface MypageService {
	
	// 1.  개인정보 수정 전 비밀번호 확인용 서비스
	Member updateCheckPwd(Member m);
	
	// 2. 회원가입용 서비스 
	int insertMember(Member m);
		
	// 3. 회원정보 수정용 서비스 
	int updateMember(Member m);
		
	// 4. 회원탈퇴용 서비스 
	// 아이디만 전달 받음 된다.
	int deleteMember(Member m);
	
	
}
