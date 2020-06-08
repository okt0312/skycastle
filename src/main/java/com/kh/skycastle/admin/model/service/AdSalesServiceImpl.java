package com.kh.skycastle.admin.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.skycastle.admin.model.dao.AdSalesDao;
import com.kh.skycastle.admin.model.dto.AdReservationDto;
import com.kh.skycastle.admin.model.dto.SalesChart;

@Service("adsService")
public class AdSalesServiceImpl implements AdSalesService{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private AdSalesDao adsDao;
	
	@Override
	public ArrayList<SalesChart> selectSalesChart() {
		return adsDao.selectSalesChart(sqlSession);
	}

	@Override
	public ArrayList<AdReservationDto> adSelectSalesList(AdReservationDto adr) {
		return adsDao.adSelectSalesList(sqlSession, adr);
	}



}
