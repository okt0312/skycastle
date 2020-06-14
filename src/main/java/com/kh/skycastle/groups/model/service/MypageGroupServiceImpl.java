package com.kh.skycastle.groups.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.skycastle.common.model.vo.PageInfo;
import com.kh.skycastle.groups.model.dao.MypageGroupDao;
import com.kh.skycastle.groups.model.vo.GroupNotice;
import com.kh.skycastle.groups.model.vo.Reply;

@Service("gnService")
public class MypageGroupServiceImpl implements MypageGroupService {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private MypageGroupDao mgDao;

	@Override
	public int selectGroupNoticeListCount(int gno) {
		return mgDao.selectGroupNoticeListCount(sqlSession, gno);
	}

	@Override
	public ArrayList<GroupNotice> selectGroupNoticeList(PageInfo pi, int gno) {
		return mgDao.selectGroupNoticeList(sqlSession, pi, gno);
	}

	@Override
	public int insertGroupNotice(GroupNotice gn) {
		return mgDao.insertGroupNotice(sqlSession, gn);
	}

	@Override
	public int increaseGroupNoticeCount(int gnoticeNo) {
		return mgDao.increaseGroupNoticeCount(sqlSession, gnoticeNo);
	}

	@Override
	public GroupNotice selectGroupNotice(int gnoticeNo) {
		return mgDao.selectGroupNotice(sqlSession, gnoticeNo);
	}

	@Override
	public int deleteGroupNotice(int gnoticeNo) {
		return mgDao.deleteGroupNotice(sqlSession, gnoticeNo);
	}

	@Override
	public int updateGroupNotice(GroupNotice gn) {
		return mgDao.updateGroupNotice(sqlSession, gn);
	}

	@Override
	public ArrayList<Reply> selectReplyList(int noticeNo) {
		return mgDao.selectReplyList(sqlSession, noticeNo);
	}

	@Override
	public int insertReply(Reply r) {
		return mgDao.insertReply(sqlSession, r);
	}

	@Override
	public ArrayList<Reply> grReplyReportForm(int rno) {
		return mgDao.grReplyReportForm(sqlSession,rno);
	}

	/* 공지사항 조회수 증가용 
	@Override
	public int increaseGroupNoticeListCount(int gno) {
		return mgDao.increaseGroupNoticeListCount(sqlSession, gno);
	}
	*/
}
