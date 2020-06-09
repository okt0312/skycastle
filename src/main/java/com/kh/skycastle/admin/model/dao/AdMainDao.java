package com.kh.skycastle.admin.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.skycastle.admin.model.dto.AdminCalendar;

@Repository("adMainDao")
public class AdMainDao {

	public ArrayList<AdminCalendar> selectCalList(SqlSessionTemplate sqlSession)
	{
		return (ArrayList)sqlSession.selectList("adMainMapper.selectCalList");
	}
	
}
