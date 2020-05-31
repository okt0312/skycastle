package com.kh.skycastle.group.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.skycastle.common.model.vo.PageInfo;
import com.kh.skycastle.group.model.dao.GroupNoticeDao;
import com.kh.skycastle.group.model.vo.GroupNotice;
import com.kh.skycastle.group.model.vo.Reply;

@Service("gnService")
public class GroupNoticeServiceImpl implements GroupNoticeService {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private GroupNoticeDao gnDao;

	@Override
	public int selectGroupNoticeListCount() {
		return gnDao.selectGroupNoticeListCount(sqlSession);
	}

	@Override
	public ArrayList<GroupNotice> selectGroupNoticeList(PageInfo pi) {
		return gnDao.selectGroupNoticeList(sqlSession, pi);
	}

	@Override
	public int insertGroupNotice(GroupNotice gn) {
		return 0;
	}

	@Override
	public int increaseGroupNoticeCount(int gnno) {
		return 0;
	}

	@Override
	public GroupNotice selectGroupNotice(int gnno) {
		return null;
	}

	@Override
	public int deleteGroupNotice(int gnno) {
		return 0;
	}

	@Override
	public int updateGroupNotice(GroupNotice gn) {
		return 0;
	}

	@Override
	public ArrayList<Reply> selectReplyList(int gnno) {
		return null;
	}

	@Override
	public int insertReply(Reply r) {
		return 0;
	}

}
