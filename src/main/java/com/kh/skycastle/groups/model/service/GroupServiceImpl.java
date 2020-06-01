package com.kh.skycastle.groups.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.skycastle.common.model.vo.PageInfo;
import com.kh.skycastle.groups.model.dao.GroupDao;
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
	public ArrayList<Groups> selectGroupList(PageInfo pi) {
		return gDao.selectGroupList(sqlSession, pi);
	}
	/*
	@Override
	public ArrayList<Groups> selectGroupThumbnailList(PageInfo pi) {
		return gDao.selectGroupThumbnailList(sqlSession, pi);
	}
	*/

	@Override
	public int insertGroup(Groups g) {
		return 0;
	}

	@Override
	public int increaseCount(int gno) {
		return 0;
	}

	@Override
	public Groups selectGroup(int gno) {
		return gDao.selectGroup(sqlSession, gno);
	}

	
	@Override
	public int deleteGroup(int gno) {
		return 0;
	}

	@Override
	public int selectUGroupListCount() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ArrayList<Groups> selectUGroupList(PageInfo pi) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int selectYGroupListCount() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ArrayList<Groups> selectYGroupList(PageInfo pi) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int selectAGroupListCount() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ArrayList<Groups> selectAGroupList(PageInfo pi) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int selectNGroupListCount() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ArrayList<Groups> selectNGroupList(PageInfo pi) {
		// TODO Auto-generated method stub
		return null;
	}


}
