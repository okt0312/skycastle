package com.kh.skycastle.admin.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.skycastle.admin.model.dao.AdGroupsDao;
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
	public int deleteBoard(int gno) {
		return 0;
	}
	
	//소모임 조회페이지 수정
	@Override
	public int updateBoard(Groups g) {
		return 0;
	}

}
