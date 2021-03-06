package com.kh.skycastle.admin.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.skycastle.cs.model.vo.Qna;

@Repository
public class AdQnaDao {

	public ArrayList<Qna> selectQnaList(SqlSessionTemplate sqlSession)
	{
		return (ArrayList)sqlSession.selectList("adQnaMapper.selectList");
	}
	
	public int deleteQna(SqlSessionTemplate sqlSession, Qna q)
	{
		return sqlSession.update("adQnaMapper.deleteQna", q);
	}
	
	public int answerQna(SqlSessionTemplate sqlSession, Qna q)
	{
		return sqlSession.update("adQnaMapper.answerQna", q);
	}
}
