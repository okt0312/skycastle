package com.kh.skycastle.admin.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.skycastle.groups.model.vo.Report;
import com.kh.skycastle.member.model.vo.Grade;
import com.kh.skycastle.member.model.vo.Member;

@Repository
public class AdMemberDao {

	public ArrayList<Member> selectMember(SqlSessionTemplate sqlSession, String status)
	{
		return (ArrayList)sqlSession.selectList("adMemberMapper.selectMember", status);
	}
	
	public int deleteMember(SqlSessionTemplate sqlSession, int userNo)
	{
		return sqlSession.delete("adMemberMapper.deleteMember", userNo);
	}
	
	public int updateMember(SqlSessionTemplate sqlSession, Member m)
	{
		return sqlSession.update("adMemberMapper.updateMember", m);
	}

	public ArrayList<Member> choiceMember(SqlSessionTemplate sqlSession, Member m)
	{
		return (ArrayList)sqlSession.selectList("adMemberMapper.choiceMember", m);
	}
	
	public ArrayList<Grade> selectGrade(SqlSessionTemplate sqlSession)
	{
		return (ArrayList)sqlSession.selectList("adMemberMapper.selectGrade");
	}
	
	public ArrayList<Member> selectBlacklist(SqlSessionTemplate sqlSession)
	{
		return (ArrayList)sqlSession.selectList("adMemberMapper.selectBlacklist");
	}
	
	public ArrayList<Report> selectReport(SqlSessionTemplate sqlSession)
	{
		return (ArrayList)sqlSession.selectList("adMemberMapper.selectReport");
	}
	
	public int updateMemberReport(SqlSessionTemplate sqlSession, Member m)
	{
		return sqlSession.update("adMemberMapper.updateMemberReport", m);
	}
}
