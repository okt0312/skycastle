package com.kh.skycastle.cs.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.skycastle.cs.model.vo.Qna;

@Repository("qDao")
public class QnaDao {

	public int insertNonMemberInquiry(SqlSessionTemplate sqlSession, Qna q) {
		return sqlSession.insert("csMapper.insertNonMemberInquiry", q);
	}
	
	public int insertMemberInquiry(SqlSessionTemplate sqlSession, Qna q) {
		return sqlSession.insert("csMapper.insertMemberInquiry", q);
	}
}
