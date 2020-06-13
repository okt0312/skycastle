package com.kh.skycastle.admin.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.skycastle.admin.model.dao.AdMemberDao;
import com.kh.skycastle.admin.model.dto.UpdateGradeDto;
import com.kh.skycastle.groups.model.vo.Report;
import com.kh.skycastle.member.model.dto.GradeDto;
import com.kh.skycastle.member.model.vo.Grade;
import com.kh.skycastle.member.model.vo.Member;

@Service("admService")
public class AdMemberServiceImpl implements AdMemberService{

	@Autowired
	private SqlSessionTemplate sqlSession;

	@Autowired
	private AdMemberDao admDao;
	
	@Override
	public ArrayList<Member> selectMember(String selNo) {
		
		return admDao.selectMember(sqlSession, selNo);
	}

	@Override
	public int deleteMember(int userNo) {
		return admDao.deleteMember(sqlSession, userNo);
	}
	
	@Override
	public ArrayList<Grade> selectGrade() {
				
		return admDao.selectGrade(sqlSession);
	}

	@Override
	public int updateMember(Member m) {
		return admDao.updateMember(sqlSession, m);
	}

	@Override
	public ArrayList<Member> selectBlacklist() {
		
		return admDao.selectBlacklist(sqlSession);
	}

	@Override
	public ArrayList<Report> selectReport() {
		
		return admDao.selectReport(sqlSession);
	}

	@Override
	public int updateMemberReport(Member m) {
		
		return admDao.updateMemberReport(sqlSession, m);
	}

	@Override
	public int updateReport(Member m) {

		return admDao.updateReport(sqlSession, m);
	}

	@Override
	public int updateReply(int reportNo) {
		return admDao.updateReply(sqlSession, reportNo);
	}

	@Override
	public ArrayList<GradeDto> countGrade() {
		return admDao.countGrade(sqlSession);
	}

	@Override
	public int updateGrade(Grade g) {
		return admDao.updateGrade(sqlSession, g);
	}

}
