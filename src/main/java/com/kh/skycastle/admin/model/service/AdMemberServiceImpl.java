package com.kh.skycastle.admin.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.skycastle.admin.model.dao.AdMemberDao;
import com.kh.skycastle.member.model.vo.Grade;
import com.kh.skycastle.member.model.vo.Member;

@Service("admService")
public class AdMemberServiceImpl implements AdMemberService{


	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Autowired
	private AdMemberDao admDao;
	
	@Override
	public ArrayList<Member> selectMember() {
		
		return admDao.selectMember(sqlSession);
	}

	@Override
	public ArrayList<Grade> selectGrade() {
				
		return admDao.selectGrade(sqlSession);
	}

}
