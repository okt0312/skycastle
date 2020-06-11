package com.kh.skycastle.admin.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.skycastle.admin.model.dao.AdReservationDao;
import com.kh.skycastle.admin.model.dto.AdReservationDto;

@Service("adReservationService")
public class AdReservationServiceImpl implements AdReservationService{

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private AdReservationDao adReservDao;
	
	@Override
	public ArrayList<AdReservationDto> selectFormList() {
		
		return adReservDao.selectFormList(sqlSession);
	}

}
