package com.kh.skycastle.admin.model.service;

import java.util.ArrayList;

import com.kh.skycastle.groups.model.vo.GroupNotice;
import com.kh.skycastle.groups.model.vo.Groups;

public interface AdGroupsService {
		
		// 소모임리스트 조회용 서비스
		ArrayList<Groups> selectGroups();
	
		// 소모임 개별(tr눌렀을때) 조회용 서비스
		Groups selectGroups(int gno);
		
		// 소모임조회모달 삭제용 서비스
		int deleteGrMgmt(int grNo);
		
		// 소모임조회모달 수정용 서비스
		int updateGrMgmt(Groups g);
		
		
		
		
		// 소모임개설리스트 조회용 서비스
		ArrayList<Groups> selectGrConfirm();
		
		// 소모임 개설 수락용 서비스
		int acceptGroups(String[] grCoCheck);
		
		// 소모임 개설 거절용 서비스
		int rejectionGroups(String[] grCoCheck);
		
		
		
		
		// 소모임게시판리스트 조회용 서비스
		ArrayList<GroupNotice> selectGrBoard();
		
		//소모임 게시판 상세조회용 서비스
		GroupNotice selectGrNoBoard(int gno);
		
		// 소모임게시판 게시물 삭제용 서비스
		int deleteGrBoard(int gno);
	
		//소모임게시판 댓글 삭제용 서비스
}
