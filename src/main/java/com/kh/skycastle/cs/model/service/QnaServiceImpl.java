package com.kh.skycastle.cs.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.skycastle.cs.model.dao.QnaDao;

@Service("qService")
public class QnaServiceImpl {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private QnaDao qDao;
	
	
}
