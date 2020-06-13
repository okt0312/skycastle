package com.kh.skycastle.groups.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.skycastle.common.model.vo.PageInfo;
import com.kh.skycastle.groups.model.dto.GroupDto;
import com.kh.skycastle.groups.model.vo.Dips;
import com.kh.skycastle.groups.model.vo.GroupManage;
import com.kh.skycastle.groups.model.vo.Groups;

@Repository("gDao")
public class GroupDao {
	
	public int selectGroupListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("groupsMapper.selectGroupListCount");
	}
	
	public ArrayList<Groups> selectGroupListAll(SqlSessionTemplate sqlSession, PageInfo pi, GroupDto gd){
		
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("groupsMapper.selectGroupListAll", gd, rowBounds);
	}

	public ArrayList<GroupDto> selectMyGroupList(SqlSessionTemplate sqlSession, PageInfo pi, GroupDto gd){
		
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("groupsMapper.selectMyGroupList", gd, rowBounds);
	}
	
	public ArrayList<Groups> selectGroupDipsList(SqlSessionTemplate sqlSession, PageInfo pi, int userNo) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("groupsMapper.selectGroupDipsList", userNo, rowBounds);
	}
	
	public ArrayList<GroupDto> selectGroup(SqlSessionTemplate sqlSession, int gno) {
		return (ArrayList)sqlSession.selectList("groupsMapper.selectGroup", gno);
	}
	
	public int countDips(SqlSessionTemplate sqlSession, Dips d) {
		return sqlSession.selectOne("groupsMapper.selectDipsList", d);
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

	public int insertGroup(SqlSessionTemplate sqlSession, Groups g) {
		return sqlSession.insert("groupsMapper.insertGroup", g);
	}

	public int insertThumbNail(SqlSessionTemplate sqlSession, Groups g) {
		return sqlSession.insert("groupsMapper.insertThumbNail", g);
	}
	
	public int groupApply(SqlSessionTemplate sqlSession, GroupManage gm) {
		return sqlSession.insert("groupsMapper.groupApply", gm);
	}
	
	public int selectDipsListCount(SqlSessionTemplate sqlSession, int userNo) {
		return sqlSession.selectOne("groupsMapper.selectDipsListCount", userNo);
	}
	

}
