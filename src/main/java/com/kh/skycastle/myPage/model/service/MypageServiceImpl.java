package com.kh.skycastle.myPage.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.skycastle.common.model.vo.PageInfo;
import com.kh.skycastle.coupon.model.vo.Coupon;
import com.kh.skycastle.member.model.vo.Member;
import com.kh.skycastle.myPage.model.dao.MypageDao;


@Service("pService")
public class MypageServiceImpl implements MypageService {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private MypageDao pDao;
	
	
	@Override
	public Member updateCheckPwd(Member m) {
		
			return pDao.updateCheckPwd(sqlSession, m); 
		
		
		
		
	}


	@Override
	public int insertMember(Member m) {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public int updateMember(Member m) {
		
		return pDao.updateMember(sqlSession,m);
	}


	@Override
	public int deleteMember(Member m) {
		
		return pDao.deleteMember(sqlSession, m);
		
	}


	@Override
	public int updatePwd(Member m) {
		
		return pDao.updatePwd(sqlSession, m);
	}




	
	
		
	

}
