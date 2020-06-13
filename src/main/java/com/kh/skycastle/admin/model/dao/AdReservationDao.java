package com.kh.skycastle.admin.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.skycastle.admin.model.dto.AdReservationDto;

@Repository("adReservDao")
public class AdReservationDao {

	public ArrayList<AdReservationDto> selectFormList(SqlSessionTemplate sqlSession, String selNo)
	{
		return (ArrayList)sqlSession.selectList("adSpaceMapper.selectFormList", selNo);
	}
	
}
