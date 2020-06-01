package com.kh.skycastle.myPage.model.service;

import java.util.ArrayList;

import com.kh.skycastle.common.model.vo.PageInfo;
import com.kh.skycastle.coupon.model.vo.Coupon;
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
	
	// 5. 비밀번호 변경 
	int updatePwd(Member m);
	
	// 6. 게시판 리스트 조회용 서비스 
	// 1_1. 게시판 총갯수 조회용 서비스 
	int selectListCount();
	// 1_2. 요청한 페이지에 보여질 게시글 리스트 조회용 서비스 
	ArrayList<Coupon> selectList(PageInfo pi);
	
	
	
	
	
}
