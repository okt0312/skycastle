package com.kh.skycastle.myPage.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.skycastle.member.model.vo.Member;

@Repository("pDao")
public class MypageDao {

	public Member memberPwd(SqlSessionTemplate sqlSession, Member m) {
		
	}
	
}
