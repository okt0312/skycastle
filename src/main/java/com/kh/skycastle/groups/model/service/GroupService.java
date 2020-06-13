package com.kh.skycastle.groups.model.service;

import java.util.ArrayList;

import com.kh.skycastle.common.model.vo.PageInfo;
import com.kh.skycastle.groups.model.dto.GroupDto;
import com.kh.skycastle.groups.model.vo.Dips;
import com.kh.skycastle.groups.model.vo.GroupManage;
import com.kh.skycastle.groups.model.vo.Groups;

public interface GroupService {
	
	// 1. 소모임 리스트 조회용 서비스
	// 1-1. 소모임 총개수 조회용 서비스
	int selectGroupListCount();
	// 1-2. 요청한 페이지에 보여질 소모임 리스트 조회용 서비스
	ArrayList<Groups> selectGroupListAll(PageInfo pi, GroupDto gd);
	// 1-3. 요청한 페이지에 보여질 마이페이지 소모임 상태별 리스트 조회용 서비스
	ArrayList<GroupDto> selectMyGroupList(PageInfo pi, GroupDto gd);
	// 1-4. 요청한 페이지에 보여질 마이페이지 찜한 소모임 리스트 조회용 서비스
	ArrayList<Groups> mygroupDipsList(PageInfo pi, int userNo);
	
	//찜한 소모임 갯수 카운트
	int selectDipsListCount(int userNo);
	//상태별 소모임 갯수 카운트
	int selectGroupStatusListCount(GroupDto gd);
	
	
	// 검색 구현하려면 마이바티스 참조
	
	
	// 3. 해당 소모임 상세조회용 서비스
	ArrayList<GroupDto> selectGroup(int gno);
	// 3-1. 회원 찜하기 여부 확인
	int countDips(Dips d);
	
	//찜목록조회
	int selectDipsList(Dips d);
	// 찜하기
	int dipsIn(Dips d);
	// 찜취소
	int dipsOut(Dips d);
	
	// 소모임 참가 신청용 서비스
	int groupApply(GroupManage gm);
	
	// 소모임 탈퇴용서비스
	int deleteGroup(int gno);
	
	// 소모임 개설 신청용 서비스
	int insertGroup(Groups g);
}
