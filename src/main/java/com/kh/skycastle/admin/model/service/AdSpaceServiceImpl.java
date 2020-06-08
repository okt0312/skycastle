package com.kh.skycastle.admin.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.skycastle.admin.model.dao.AdSpaceDao;
import com.kh.skycastle.reservation.model.vo.Space;

@Service("adSpService")
public class AdSpaceServiceImpl implements AdSpaceService{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private AdSpaceDao adSpDao;
	
	//공간리스트 조회
	@Override
	public ArrayList<Space> selectSpace(){
		return adSpDao.selectSpace(sqlSession);
	}
	
}
