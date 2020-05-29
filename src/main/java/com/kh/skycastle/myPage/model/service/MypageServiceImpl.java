package com.kh.skycastle.myPage.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
	
	
		
	

}
