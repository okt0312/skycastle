package com.kh.skycastle.member.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.skycastle.member.model.dao.MemberDao;
import com.kh.skycastle.member.model.vo.Member;

@Service("mService")
public class MemberServiceImpl implements MemberService{

    @Autowired
    private SqlSessionTemplate sqlSession;

    @Autowired
    private MemberDao mDao;
    
	@Override
	public Member loginMember(Member m) 
	{
		return mDao.loginMember(sqlSession, m);
	}
	

	@Override
	public int insertMember(Member m) {
		return mDao.insertMember(sqlSession, m);
	}

	@Override
	public int updateMember(Member m) {
		
		return 0;
	}

	@Override
	public int idCheck(String userId) {
		return mDao.idCheck(sqlSession, userId);
	}

    
}
