package com.kh.skycastle.groups.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.skycastle.common.model.vo.PageInfo;
import com.kh.skycastle.groups.model.dao.GroupDao;
import com.kh.skycastle.groups.model.vo.Dips;
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
		return gDao.selectGroupList(sqlSession, pi, null);
		// 여기서 status를 null로 넘겨줘
	}
	
	@Override
	public ArrayList<Groups> selectMyGroupList(PageInfo pi, String status) {
		return gDao.selectGroupList(sqlSession, pi, status);
	}
	
	/*
	@Override
	public ArrayList<Groups> selectGroupThumbnailList(PageInfo pi) {
		return gDao.selectGroupThumbnailList(sqlSession, pi);
	}
	*/
	
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





}
