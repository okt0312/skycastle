package com.kh.skycastle.groups.model.service;

import java.util.ArrayList;

import com.kh.skycastle.common.model.vo.PageInfo;
import com.kh.skycastle.groups.model.dto.GroupDto;
import com.kh.skycastle.groups.model.vo.Dips;
import com.kh.skycastle.groups.model.vo.Groups;
import com.kh.skycastle.member.model.vo.Member;

public interface GroupService {
	
	// 1. 소모임 리스트 조회용 서비스
	// 1-1. 소모임 총개수 조회용 서비스
	int selectGroupListCount();
	// 1-2. 요청한 페이지에 보여질 소모임 리스트 조회용 서비스
	ArrayList<Groups> selectGroupList(PageInfo pi, GroupDto gd);
	// 1-3. 요청한 페이지에 보여질 소모임 리스트 조회용 서비스
	ArrayList<Groups> selectMyGroupList(PageInfo pi, GroupDto gd);
	
	
	// 검색 구현하려면 마이바티스 참조
	
	// 2. 소모임 신청용 서비스
	int insertGroup(Groups g);
	
	// 3. 해당 소모임 상세조회용 서비스
	Groups selectGroup(int gno);
	// 3-1. 회원 찜하기 여부 확인
	int countDips(Dips d);
	
	//찜목록조회
	ArrayList<Dips> selectDipsList(int userNo);
	// 찜하기
	int dipsIn(Dips d);
	// 찜취소
	int dipsOut(Dips d);
	
	// 4. 소모임 탈퇴용서비스
	int deleteGroup(int gno);
	
}
