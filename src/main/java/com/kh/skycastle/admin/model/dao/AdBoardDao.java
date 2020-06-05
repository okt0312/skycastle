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
	
	
	
}
