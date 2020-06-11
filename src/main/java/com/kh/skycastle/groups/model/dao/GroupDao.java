package com.kh.skycastle.groups.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.skycastle.common.model.vo.PageInfo;
import com.kh.skycastle.groups.model.dto.GroupDto;
import com.kh.skycastle.groups.model.vo.Dips;
import com.kh.skycastle.groups.model.vo.Groups;
import com.kh.skycastle.member.model.vo.Member;

@Repository("gDao")
public class GroupDao {
	
	public int selectGroupListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("groupsMapper.selectGroupListCount");
	}
	
	public ArrayList<Groups> selectGroupList(SqlSessionTemplate sqlSession, PageInfo pi, GroupDto gd){
		// rowbounds 생성하기 위해서 offset만들기
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("groupsMapper.selectGroupList", gd, rowBounds);
	}
	
/*
	public ArrayList<Groups> selectGroupThumbnailList(SqlSessionTemplate sqlSession, PageInfo pi){
		
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("groupsMapper.selectGroupThumbnailList", null, rowBounds);
	}
*/
	
	public Groups selectGroup(SqlSessionTemplate sqlSession, int gno) {
		return sqlSession.selectOne("groupsMapper.selectGroup", gno);
	}
	
	public int countDips(SqlSessionTemplate sqlSession, Dips d) {
		return sqlSession.selectOne("groupsMapper.countDips", d);
	}
	
	public int selectDipsList(SqlSessionTemplate sqlSession, Dips d){
		return sqlSession.selectOne("groupsMapper.selectDipsList", d);
	}

	public int dipsIn(SqlSessionTemplate sqlSession, Dips d) {
		return sqlSession.insert("groupsMapper.dipsIn", d);
	}

	public int dipsOut(SqlSessionTemplate sqlSession, Dips d) {
		return sqlSession.insert("groupsMapper.dipsOut", d);
	}
	
	
/*
	public ArrayList<Groups> selectGroupThumbnailList(SqlSessionTemplate sqlSession, PageInfo pi){
		
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("groupsMapper.selectGroupThumbnailList", null, rowBounds);
	}
*/

}
