package com.kh.skycastle.admin.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.skycastle.cs.model.vo.Notice;

@Repository
public class AdBoardDao {
	
	
	public ArrayList<Notice> selectNotice(SqlSessionTemplate sqlSession){
		return (ArrayList)sqlSession.selectList("adBoardMapper.selectNotice");
	}
	
	
	public Notice selectNoDetail(SqlSessionTemplate sqlSession,int bno) {
		
		return sqlSession.selectOne("adBoardMapper.selectNoDetail", bno);
		
	}
	
	
	public int updateAdNotice(SqlSessionTemplate sqlSession, Notice n) {
		return sqlSession.update("adBoardMapper.updateAdNotice",n);
	}
	
	public int deleteAdNotice(SqlSessionTemplate sqlSession,int bno) {
		return sqlSession.delete("adBoardMapper.deleteAdNotice",bno);
	}
}
