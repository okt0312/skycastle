package com.kh.skycastle.admin.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.skycastle.admin.model.dto.AdReservationDto;
import com.kh.skycastle.admin.model.dto.SalesChart;

@Repository("adsDao")
public class AdSalesDao {
	
	public ArrayList<SalesChart> selectSalesChart(SqlSessionTemplate sqlSession)
	{
		return (ArrayList)sqlSession.selectList("adSalesMapper.selectSalesChart");
	}
	
	public ArrayList<AdReservationDto> adSelectSalesList(SqlSessionTemplate sqlSession, AdReservationDto adr)
	{
		return (ArrayList)sqlSession.selectList("adSalesMapper.adSelectSalesList", adr);
	}
}
