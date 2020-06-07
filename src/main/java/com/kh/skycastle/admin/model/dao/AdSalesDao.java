package com.kh.skycastle.admin.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.skycastle.admin.model.dto.AdReservationDto;

@Repository("adsDao")
public class AdSalesDao {
	
	public ArrayList<AdReservationDto> adSelectSalesList(SqlSessionTemplate sqlSession, AdReservationDto adr)
	{
		return (ArrayList)sqlSession.selectList("adSalesMapper.adSelectSalesList", adr);
	}
}
