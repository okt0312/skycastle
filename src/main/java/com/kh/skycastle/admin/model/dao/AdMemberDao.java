package com.kh.skycastle.admin.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.skycastle.groups.model.vo.Report;
import com.kh.skycastle.member.model.dto.GradeDto;
import com.kh.skycastle.member.model.vo.Grade;
import com.kh.skycastle.member.model.vo.Member;

@Repository
public class AdMemberDao {

	public ArrayList<Member> selectMember(SqlSessionTemplate sqlSession, String selNo)
	{
		return (ArrayList)sqlSession.selectList("adMemberMapper.selectMember", selNo);
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
	
	public ArrayList<Report> selectReport(SqlSessionTemplate sqlSession, String selNo)
	{
		return (ArrayList)sqlSession.selectList("adMemberMapper.selectReport", selNo);
	}
	
	public int updateMemberReport(SqlSessionTemplate sqlSession, Member m)
	{
		return sqlSession.update("adMemberMapper.updateMemberReport", m);
	}
	public int updateReport(SqlSessionTemplate sqlSession, Member m)
	{
		return sqlSession.update("adMemberMapper.updateReport", m);
	}
	
	public int updateReply(SqlSessionTemplate sqlSession, int reportNo)
	{
		return sqlSession.update("adMemberMapper.updateReply", reportNo);
	}
	
	public ArrayList<GradeDto> countGrade(SqlSessionTemplate sqlSession)
	{
		return (ArrayList)sqlSession.selectList("adMemberMapper.countGrade");
	}
	
	public int updateGrade(SqlSessionTemplate sqlSession, Grade g)
	{
		return sqlSession.update("adMemberMapper.updateGrade", g);
	}
}
