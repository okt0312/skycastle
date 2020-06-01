package com.kh.skycastle.groups.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.skycastle.common.model.vo.PageInfo;
import com.kh.skycastle.groups.model.vo.Groups;

@Repository("gDao")
public class GroupDao {
	
	public int selectGroupListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("groupsMapper.selectGroupListCount");
	}
	
	public ArrayList<Groups> selectGroupList(SqlSessionTemplate sqlSession, PageInfo pi){
		// rowbounds 생성하기 위해서 offset만들기
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("groupsMapper.selectGroupList", null, rowBounds);
	}

}