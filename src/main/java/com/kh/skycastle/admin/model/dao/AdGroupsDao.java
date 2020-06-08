package com.kh.skycastle.admin.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.skycastle.groups.model.vo.GroupNotice;
import com.kh.skycastle.groups.model.vo.Groups;

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
		
		return sqlSession.delete("adGroupsMapper.deleteGrMgmt", grNo);
	}
	
	
	
	
	
	//소모임개설관리 리스트 불러오는 메소드
		public ArrayList<Groups> selectGrConfirm(SqlSessionTemplate sqlSession){
			return (ArrayList)sqlSession.selectList("adGroupsMapper.selectGrConfirm");
		}
	
		
		
		//소모임개설관리 수락메소드
		public int acceptGroups(SqlSessionTemplate sqlSession, String[] grCoCheck ){
			return sqlSession.update("adGroupsMapper.acceptGroups", grCoCheck);
		}
		
		//소모임개설관리 거절메소드
		public int rejectionGroups(SqlSessionTemplate sqlSession, String[] grCoCheck ){
			return sqlSession.update("adGroupsMapper.rejectionGroups", grCoCheck);
		}
		
		
		//소모임 공지사항 관리
		
		public ArrayList<GroupNotice> selectGrBoard(SqlSessionTemplate sqlSession){
			return (ArrayList)sqlSession.selectList("adGroupsMapper.selectGrBoard");
		}

		public GroupNotice selectGrBoard(SqlSessionTemplate sqlSession, int gno) {
			return sqlSession.selectOne("adGroupsMapper.selectGrBoard", gno);
		}		
				
}
