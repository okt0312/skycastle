package com.kh.skycastle.cs.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.skycastle.cs.model.dao.EventDao;
import com.kh.skycastle.cs.model.vo.Event;

@Service("eService")
public class EventServiceImpl implements EventService {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private EventDao eDao;
	
	@Override
	public ArrayList<Event> selectList() {
		return eDao.selectList(sqlSession);
	}

	@Override
	public Event selectEvent(int eno) {
		return eDao.selectEvent(sqlSession, eno);
	}

}
