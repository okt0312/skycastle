package com.kh.skycastle.admin.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.skycastle.groups.model.vo.Groups;

//소모임 관리(소모임조회, 개설관리, 소모임게시글관리)관련 Dao입니다
@Repository
public class AdGroupsDao {
	
	//게시글 리스트 불러오는 메소드
	public ArrayList<Groups> selectGroups(SqlSessionTemplate sqlSession){
		return (ArrayList)sqlSession.selectList("adGroupsMapper.selectGroups");
	}
}
