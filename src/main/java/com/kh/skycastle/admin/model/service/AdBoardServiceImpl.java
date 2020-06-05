package com.kh.skycastle.admin.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.skycastle.admin.model.dao.AdBoardDao;

@Service("adBoService")
public class AdBoardServiceImpl implements AdBoardService {

	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private AdBoardDao adBoDao;
}
