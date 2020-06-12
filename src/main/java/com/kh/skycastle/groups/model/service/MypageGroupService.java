package com.kh.skycastle.groups.model.service;

import java.util.ArrayList;

import com.kh.skycastle.common.model.vo.PageInfo;
import com.kh.skycastle.groups.model.vo.GroupNotice;
import com.kh.skycastle.groups.model.vo.Reply;

public interface MypageGroupService {
	
	// 1. 소모임 공지사항 리스트 조회용 서비스
	// 1-1. 소모임 공지사항 총개수 조회용 서비스
	int selectGroupNoticeListCount();
	// 1-2. 요청한 페이지에 보여질 소모임 공지사항 리스트 조회용 서비스
	ArrayList<GroupNotice> selectGroupNoticeList(PageInfo pi, int gno);
	
	// 검색 구현하려면 마이바티스 참조
	
	// 2. 소모임 공지사항 작성용 서비스
	int insertGroupNotice(GroupNotice gn);
	
	// 3. 소모임 공지사항 상세조회용 서비스
	// 3-1. 해당 소모임 공지사항 조회수 증가용 서비스
	int increaseGroupNoticeCount(int gnno);
	// 3-2. 해당 소모임 공지사항 조회용 서비스
	GroupNotice selectGroupNotice(int gnno);
	
	// 4. 소모임 공지사항 삭제용 서비스
	int deleteGroupNotice(int gnno);
	
	// 5. 소모임 공지사항 수정용 서비스
	int updateGroupNotice(GroupNotice gn);
	
	// --------- ajax ----------
	// 6. 해당 소모임 공지사항에 딸려있는 댓글 리스트 조회용 서비스
	ArrayList<Reply> selectReplyList(int gnoticeNo);
	
	// 7. 댓글 작성용 서비스
	int insertReply(Reply r);

}
