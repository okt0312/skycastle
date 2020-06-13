package com.kh.skycastle.groups.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.skycastle.common.model.vo.PageInfo;
import com.kh.skycastle.groups.model.dao.GroupDao;
import com.kh.skycastle.groups.model.dto.GroupDto;
import com.kh.skycastle.groups.model.vo.Dips;
import com.kh.skycastle.groups.model.vo.GroupManage;
import com.kh.skycastle.groups.model.vo.Groups;

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
	public ArrayList<Groups> selectGroupListAll(PageInfo pi, GroupDto gd) {
		return gDao.selectGroupListAll(sqlSession, pi, gd);
	}
	
	@Override
	public ArrayList<GroupDto> selectMyGroupList(PageInfo pi, GroupDto gd) {
		return gDao.selectMyGroupList(sqlSession, pi, gd);
	}
	
	@Override
	public ArrayList<Groups> mygroupDipsList(PageInfo pi, int userNo) {
		return gDao.selectGroupDipsList(sqlSession, pi, userNo);
	}
	
	@Override
	public ArrayList<GroupDto> selectGroup(int gno) {
		return gDao.selectGroup(sqlSession, gno);
	}

	@Override
	public int countDips(Dips d) {
		return gDao.countDips(sqlSession, d);
	}
	
	
	@Override
	public int insertGroup(Groups g) {
		int result2 = gDao.insertGroup(sqlSession, g);
		int result1 = gDao.insertThumbNail(sqlSession, g);
		return result1*result2;
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

	@Override
	public int groupApply(GroupManage gm) {
		return gDao.groupApply(sqlSession,gm);
	}
	
	@Override
	public int selectDipsListCount(int userNo) {
		return  gDao.selectDipsListCount(sqlSession,userNo);
	}

	








}
