package com.kh.skycastle.group.model.service;

import java.util.ArrayList;

import com.kh.skycastle.common.model.vo.PageInfo;
import com.kh.skycastle.group.model.vo.Groups;

public interface GroupService {
	
	// 1. 소모임 리스트 조회용 서비스
	// 1-1. 소모임 총개수 조회용 서비스
	int selectGroupListCount();
	// 1-2. 요청한 페이지에 보여질 소모임 리스트 조회용 서비스
	ArrayList<Groups> selectGroupList(PageInfo pi);
	
	// 2. 소모임 신청용 서비스
	int insertGroup(Groups g);
	
	// 3. 소모임 상세조회용 서비스
	// 3-1. 해당 소모임 조회수 증가용 서비스
	int increaseCount(int gno);
	// 3-2. 해당 소모임 조회용 서비스
	Groups selectGroup(int gno);

}
