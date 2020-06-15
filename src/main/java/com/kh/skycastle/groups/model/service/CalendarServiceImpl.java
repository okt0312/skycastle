package com.kh.skycastle.groups.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.skycastle.groups.model.dao.CalendarDao;
import com.kh.skycastle.groups.model.vo.Calendar;

@Service("calService")
public class CalendarServiceImpl implements CalendarService{

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private CalendarDao calDao;

	@Override
	public ArrayList<Calendar> selectCalList() {
		return calDao.selectCalList(sqlSession);
	}
	
}
