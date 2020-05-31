package com.kh.skycastle.group.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository("gnDao")
public class GroupNoticeDao {
	
	public int selectGroupNoticeListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("boardMapper.selectGroupNoticeListCount");
	}
	
	

}
