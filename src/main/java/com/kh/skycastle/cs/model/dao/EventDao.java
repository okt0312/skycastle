package com.kh.skycastle.cs.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.skycastle.cs.model.vo.Event;

@Repository("eDao")
public class EventDao {
	
	public ArrayList<Event> selectEventList(SqlSessionTemplate sqlSession){
		return (ArrayList)sqlSession.selectList("csMapper.selectEventList");
	}
	
	public Event selectEvent(SqlSessionTemplate sqlSession, int eno) {
		return sqlSession.selectOne("csMapper.selectEvent", eno);
	}

}
