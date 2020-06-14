package com.kh.skycastle.groups.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.skycastle.groups.model.vo.Calendar;

@Repository("calDao")
public class CalendarDao {
	
	public ArrayList<Calendar> selectCalList(SqlSessionTemplate sqlSession)
	{	
		ArrayList<Calendar> list = (ArrayList)sqlSession.selectList("calendarMapper.selectCalList"); 
		
		for(Calendar i : list)
		{
			i.setStartDate(i.getStartDate().substring(0, 10));
			i.setEndDate(i.getEndDate().substring(0, 10));
		}
		
		return list;
	}

}
