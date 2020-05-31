package com.kh.skycastle.admin.model.service;

import java.util.ArrayList;

import com.kh.skycastle.group.model.vo.Groups;

public interface AdGroupsService {
		
		// 소모임리스트 조회용 서비스
		ArrayList<Groups> selectGroups();
	
		// 소모임 개별 조회용 서비스
		Groups selectGroups(int gno);
		
		// 소모임조회페이지 삭제 서비스
		int deleteBoard(int gno);
		
		// 소모임조회페이지 수정 서비스
		int updateBoard(Groups g);
}
