package com.kh.skycastle.group.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository("gDao")
public class GroupDao {
	
	public int selectGroupListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("boardMapper.selectGroupListCount");
	}

}
