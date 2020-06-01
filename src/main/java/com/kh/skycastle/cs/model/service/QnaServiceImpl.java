package com.kh.skycastle.cs.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.skycastle.cs.model.dao.QnaDao;
import com.kh.skycastle.cs.model.vo.Qna;

@Service("qService")
public class QnaServiceImpl implements QnaService{

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private QnaDao qDao;

	@Override
	public int insertNonMemberInquiry(Qna q) {
		return qDao.insertNonMemberInquiry(sqlSession, q);
	}

	@Override
	public int insertMemberInquiry(Qna q) {
		return qDao.insertMemberInquiry(sqlSession, q);
	}
	
	
}
