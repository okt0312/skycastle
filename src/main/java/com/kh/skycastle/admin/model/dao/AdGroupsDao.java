package com.kh.skycastle.admin.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.skycastle.group.model.vo.Groups;


@Repository
public class AdGroupsDao {

	public ArrayList<Groups> selectGroups(SqlSessionTemplate sqlSession)
	{
		return (ArrayList)sqlSession.selectList("adGroupsMapper.selectGroups");
	}
}
