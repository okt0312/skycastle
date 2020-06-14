package com.kh.skycastle.groups.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.skycastle.groups.model.vo.Reply;

@Repository("rpDao")
public class ReplyDao {
	public ArrayList<Reply> selectReplyList(SqlSessionTemplate sqlSession, int noticeNo) {
		return (ArrayList)sqlSession.selectList("groupsMapper.selectReplyList", noticeNo);
	}

	public int insertReply(SqlSessionTemplate sqlSession, Reply r) {
		return sqlSession.insert("groupsMapper.insertReply", r);
	}
}
