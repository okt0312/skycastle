package com.kh.skycastle.groups.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.skycastle.groups.model.dao.MypageGroupDao;
import com.kh.skycastle.groups.model.dao.ReplyDao;
import com.kh.skycastle.groups.model.vo.Reply;

@Service("rpService")
public class ReplyServiceImpl implements ReplyService {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private ReplyDao rpDao;
	
	@Override
	public ArrayList<Reply> selectReplyList(int noticeNo) {
		return rpDao.selectReplyList(sqlSession, noticeNo);
	}

	@Override
	public int insertReply(Reply r) {
		return rpDao.insertReply(sqlSession, r);
	}
}
