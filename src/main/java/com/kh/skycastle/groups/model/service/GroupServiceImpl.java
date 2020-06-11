package com.kh.skycastle.groups.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.skycastle.common.model.vo.PageInfo;
import com.kh.skycastle.groups.model.dao.GroupDao;
import com.kh.skycastle.groups.model.dto.GroupDto;
import com.kh.skycastle.groups.model.vo.Dips;
import com.kh.skycastle.groups.model.vo.Groups;
import com.kh.skycastle.member.model.vo.Member;

@Service("gService")
public class GroupServiceImpl implements GroupService {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private GroupDao gDao;

	@Override
	public int selectGroupListCount() {
		return gDao.selectGroupListCount(sqlSession);
	}

	@Override
	public ArrayList<GroupDto> selectGroupListAll(PageInfo pi, GroupDto gd) {
		return gDao.selectGroupListAll(sqlSession, pi, gd);
	}
	
	@Override
	public ArrayList<GroupDto> selectMyGroupList(PageInfo pi, GroupDto gd) {
		return gDao.selectGroupList(sqlSession, pi, gd);
	}
	
	@Override
	public ArrayList<Dips> mygroupDipsList(PageInfo pi, int userNo) {
		return gDao.selectGroupDipsList(sqlSession, pi, userNo);
	}
	
	@Override
	public Groups selectGroup(int gno) {
		return gDao.selectGroup(sqlSession, gno);
	}

	@Override
	public int countDips(Dips d) {
		return gDao.countDips(sqlSession, d);
	}
	
	
	@Override
	public int insertGroup(Groups g) {
		return 0;
	}

	@Override
	public int deleteGroup(int gno) {
		return 0;
	}

	@Override
	public int dipsIn(Dips d) {
		return gDao.dipsIn(sqlSession, d);
	}
	
	@Override
	public int dipsOut(Dips d) {
		return gDao.dipsOut(sqlSession, d);
	}
	
	@Override
	public int selectDipsList(Dips d) {
		return gDao.selectDipsList(sqlSession, d);
	}







}
