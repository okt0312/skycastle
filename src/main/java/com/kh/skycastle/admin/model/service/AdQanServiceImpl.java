package com.kh.skycastle.admin.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.skycastle.admin.model.dao.AdQnaDao;
import com.kh.skycastle.cs.model.vo.Qna;

@Service("adqService")
public class AdQanServiceImpl implements AdQnaService{

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private AdQnaDao adqDao;
	
	@Override
	public ArrayList<Qna> selectQnaList() {
		return adqDao.selectQnaList(sqlSession);
	}

	@Override
	public int deleteQna(Qna q) {
		return adqDao.deleteQna(sqlSession, q);
	}

}
