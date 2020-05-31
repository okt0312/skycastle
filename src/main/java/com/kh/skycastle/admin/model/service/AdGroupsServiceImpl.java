package com.kh.skycastle.admin.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.skycastle.admin.model.dao.AdGroupsDao;
import com.kh.skycastle.group.model.vo.GroupNotice;
import com.kh.skycastle.group.model.vo.Groups;
import com.kh.skycastle.member.model.vo.Member;

@Service("adGrService")
public class AdGroupsServiceImpl implements AdGroupsService {
	
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private AdGroupsDao adGrDao;
	
	
	//소모임 조회페이지 리스트 불러오기
	@Override
	public ArrayList<Groups> selectGroups() {
		
		ArrayList<Groups> list = adGrDao.selectGroups(sqlSession);
				
				return list;
	}
	
	//소모임 조회페이지  선택
	@Override
	public Groups selectGroups(int gno) {
		return null;
	}
	
	//소모임 조회페이지 삭제
	@Override
	public int deleteGrMgmt(int gno) {
		return 0;
	}
	
	//소모임 조회페이지 수정
	@Override
	public int updateGrMgmt(Groups g) {
		return 0;
	}
	
	//소모임 개설 수락
	@Override
	public int acceptGroups(int gno) {
		// TODO Auto-generated method stub
		return 0;
	}

	//소모임 개설 거절
	@Override
	public int rejectionGroups(int gno) {
		// TODO Auto-generated method stub
		return 0;
	}



	@Override
	public ArrayList<Groups> selectGrConfirm() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<GroupNotice> selectGrBoard() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public GroupNotice selectGrBoard(int gno) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int deleteGrBoard(int gno) {
		// TODO Auto-generated method stub
		return 0;
	}

}
