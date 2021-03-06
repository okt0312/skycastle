package com.kh.skycastle.admin.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.skycastle.admin.model.dao.AdGroupsDao;
import com.kh.skycastle.groups.model.vo.GroupNotice;
import com.kh.skycastle.groups.model.vo.Groups;
import com.kh.skycastle.groups.model.vo.Reply;

@Service("adGrService")
public class AdGroupsServiceImpl implements AdGroupsService {
	
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private AdGroupsDao adGrDao;
	
	
	//소모임 조회페이지 리스트 불러오기
	@Override
	public ArrayList<Groups> selectGroupList(String selNo) {
		
		return  adGrDao.selectGroupList(sqlSession,selNo);
				
				
	}
	
	//소모임 조회페이지  tr선택(한줄정보들)
	@Override
	public Groups selectGroups(int gno) {
		return null;
	}
	
	//소모임 조회페이지 삭제
	@Override
	public int deleteGrMgmt(int grNo) {
		return adGrDao.deleteGrMgmt(sqlSession, grNo);
	}
	
	//소모임 조회페이지 수정
	@Override
	public int updateGrMgmt(Groups g) {
		return adGrDao.updateGrMgmt(sqlSession, g);
	}
	
	
	
	
	//소모임 개설 리스트 불러오기
	@Override
	public ArrayList<Groups> selectGrConfirm() {
		return  adGrDao.selectGrConfirm(sqlSession);
	}
	
	
	//소모임 개설 수락
	@Override
	public int acceptGroups(String[] grCoCheck) {
		return adGrDao.acceptGroups(sqlSession,grCoCheck);
	}

	//소모임 개설 거절
	@Override
	public int rejectionGroups(String[] grCoCheck) {
		return adGrDao.rejectionGroups(sqlSession,grCoCheck);
	}



	
	//소모임게시판 관리페이지 리스트불러오기
	@Override
	public ArrayList<GroupNotice> selectGrBoard() {
		return  adGrDao.selectGrBoard(sqlSession);
	}
	
	//소모임게시판 관리 페이지 각각 tr눌러서 불러오기
	@Override
	public GroupNotice selectGrNoBoard(int gno) {
		return adGrDao.selectGrNoBoard(sqlSession,gno);
	}

	//소모임 게시글 상세페이지에서 게시글 삭제하기
	@Override
	public int deleteAdGrNotice(int gno) {
		return adGrDao.deleteAdGrNotice(sqlSession,gno);
	}
	
	//소모임 게시글 댓글 조회용
	@Override
	public ArrayList<Reply> selectAdReplyList(int gno) {

		return adGrDao.selectAdReplyList(sqlSession, gno);
	}

	@Override
	public int deleteAdReply(int rno) {
		return adGrDao.deleteAdReply(sqlSession, rno);
	
	}

}
