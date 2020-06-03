package com.kh.skycastle.admin.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.skycastle.groups.model.vo.Groups;
import com.kh.skycastle.member.model.vo.Member;

//소모임 관리(소모임조회, 개설관리, 소모임게시글관리)관련 Dao입니다
@Repository
public class AdGroupsDao {
	
	//소모임조회 리스트 불러오는 메소드
	public ArrayList<Groups> selectGroups(SqlSessionTemplate sqlSession){
		return (ArrayList)sqlSession.selectList("adGroupsMapper.selectGroups");
	}
	
	//소모임 조회 모달에서 수정하는 메소드
	public int updateGrMgmt(SqlSessionTemplate sqlSession, Groups g)
	{
		return sqlSession.update("adGroupsMapper.updateGrMgmt", g);
	}
	
	//소모임 조회 모달에서 삭제하는 메소드
	
	public int deleteGrMgmt(SqlSessionTemplate sqlSession, int grNo) {
		
	}
	
	
	//소모임개설관리 리스트 불러오는 메소드
		public ArrayList<Groups> selectGrConfirm(SqlSessionTemplate sqlSession){
			return (ArrayList)sqlSession.selectList("adGroupsMapper.selectGrConfirm");
		}
	
}
