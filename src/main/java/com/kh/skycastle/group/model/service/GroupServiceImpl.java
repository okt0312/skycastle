package com.kh.skycastle.group.model.service;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.kh.skycastle.common.model.vo.PageInfo;
import com.kh.skycastle.group.model.vo.Groups;

@Service("gService")
public class GroupServiceImpl implements GroupService {

	@Override
	public int selectGroupListCount() {
		return 0;
	}

	@Override
	public ArrayList<Groups> selectGroupList(PageInfo pi) {
		return null;
	}

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
		return null;
	}

	@Override
	public int deleteGroup(int gno) {
		return 0;
	}

}
