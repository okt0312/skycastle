package com.kh.skycastle.admin.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.skycastle.admin.model.dao.AdMainDao;
import com.kh.skycastle.admin.model.dto.AdminCalendar;
import com.kh.skycastle.admin.model.dto.MainCount;

@Service("adMainService")
public class AdMainServiceImpl implements AdMainService{
	
	@Autowired
	private AdMainDao adMainDao; 
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public ArrayList<AdminCalendar> selectCalList() {
		return adMainDao.selectCalList(sqlSession);
	}

	@Override
	public MainCount selectCount() {
		return adMainDao.selectCount(sqlSession);
	}
}
