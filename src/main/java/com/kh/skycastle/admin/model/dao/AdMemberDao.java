package com.kh.skycastle.admin.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.skycastle.member.model.vo.Member;

@Repository
public class AdMemberDao {

	public ArrayList<Member> selectMember(SqlSessionTemplate sqlSession)
	{
		return (ArrayList)sqlSession.selectList("adMemberMapper.selectMember");
	}
}