package com.kh.skycastle.groups.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.skycastle.common.model.vo.PageInfo;
import com.kh.skycastle.groups.model.vo.GroupManage;
import com.kh.skycastle.groups.model.vo.GroupNotice;
import com.kh.skycastle.groups.model.vo.Reply;

@Repository("mgDao")
public class MypageGroupDao {
	
	public int selectGroupNoticeListCount(SqlSessionTemplate sqlSession, int gno) {
		return sqlSession.selectOne("groupsMapper.selectGroupNoticeListCount", gno);
	}
	
	public ArrayList<GroupNotice> selectGroupNoticeList(SqlSessionTemplate sqlSession, PageInfo pi, int gno){
		// rowbounds 생성하기 위해서 offset만들기
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("groupsMapper.selectGroupNoticeList", gno, rowBounds);
	}

	public int insertGroupNotice(SqlSessionTemplate sqlSession, GroupNotice gn) {
		return sqlSession.insert("groupsMapper.insertGroupNotice", gn);
	}

	public ArrayList<Reply> selectReplyList(SqlSessionTemplate sqlSession, int noticeNo) {
		return (ArrayList)sqlSession.selectList("groupsMapper.selectReplyList", noticeNo);
	}

	public int insertReply(SqlSessionTemplate sqlSession, Reply r) {
		return sqlSession.insert("groupsMapper.insertReply", r);
	}

	public int increaseGroupNoticeCount(SqlSessionTemplate sqlSession, int gnoticeNo) {
		return sqlSession.update("groupsMapper.increaseGroupNoticeCount", gnoticeNo);
	}

	public GroupNotice selectGroupNotice(SqlSessionTemplate sqlSession, int gnoticeNo) {
		return sqlSession.selectOne("groupsMapper.selectGroupNotice", gnoticeNo);
	}

	public int deleteGroupNotice(SqlSessionTemplate sqlSession, int gnoticeNo) {
		return sqlSession.update("groupsMapper.deleteGroupNotice", gnoticeNo);
	}

	public int updateGroupNotice(SqlSessionTemplate sqlSession, GroupNotice gn) {
		return sqlSession.update("groupsMapper.updateGroupNotice", gn);
	}

	public ArrayList<Reply> grReplyReportForm(SqlSessionTemplate sqlSession,int rno) {
		return (ArrayList)sqlSession.selectList("groupsMapper.grReplyReportForm",rno);
	}
	
	/*
	public int increaseGroupNoticeListCount(SqlSessionTemplate sqlSession, int gno) {
		return sqlSession.update("groupsMapper.increaseGroupNoticeListCount", gno);
	}
	*/

	public int groupDropOut(SqlSessionTemplate sqlSession, GroupManage gm) {
		return sqlSession.update("groupsMapper.groupDropOut", gm);
	}
	

}
