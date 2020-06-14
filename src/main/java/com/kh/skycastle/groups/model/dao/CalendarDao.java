package com.kh.skycastle.groups.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.skycastle.groups.model.vo.Calendar;

@Repository("calDao")
public class CalendarDao {
	
	public ArrayList<Calendar> selectCalList(SqlSessionTemplate sqlSession)
	{
		return (ArrayList)sqlSession.selectList("calendarMapper.selectCalList");
	}

}
