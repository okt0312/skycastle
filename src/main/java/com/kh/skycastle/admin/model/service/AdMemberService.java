package com.kh.skycastle.admin.model.service;

import java.util.ArrayList;

import com.kh.skycastle.admin.model.dto.UpdateGradeDto;
import com.kh.skycastle.groups.model.vo.Report;
import com.kh.skycastle.member.model.dto.GradeDto;
import com.kh.skycastle.member.model.vo.Grade;
import com.kh.skycastle.member.model.vo.Member;

public interface AdMemberService {
	
	// 관리페이지 회원 조회
	ArrayList<Member> selectMember(String status);
	
	// 관리페이지 회원 탈퇴
	int deleteMember(int userNo);
	
	// 관리페이지 회원 수정
	int updateMember(Member m);
	
	ArrayList<Grade> selectGrade();
	
	ArrayList<GradeDto> countGrade();
	
	ArrayList<Member> selectBlacklist();
	
	ArrayList<Report> selectReport();
	
	int updateMemberReport(Member m);
	
	int updateReport(Member m);
	
	int updateReply(int reportNo);
	
	int updateGrade(Grade g);
	
}
