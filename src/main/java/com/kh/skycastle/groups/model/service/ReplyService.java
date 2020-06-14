package com.kh.skycastle.groups.model.service;

import java.util.ArrayList;

import com.kh.skycastle.groups.model.vo.Reply;

public interface ReplyService {

	// 해당 소모임 공지사항에 딸려있는 댓글 리스트 조회용 서비스
	ArrayList<Reply> selectReplyList(int noticeNo);
	
	// 댓글 작성용 서비스
	int insertReply(Reply r);
}
