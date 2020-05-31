package com.kh.skycastle.admin.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.skycastle.admin.model.dao.AdGroupsDao;
import com.kh.skycastle.group.model.vo.Groups;
import com.kh.skycastle.member.model.vo.Member;

@Service("adGrService")
public class AdGroupsServiceImpl implements AdGroupsService {

	@Autowired
	private SqlSessionTemplate sqlSession;

	@Autowired
	private AdGroupsDao adGrDao;
	
	@Override
	public ArrayList<Groups> selectGroups() {
		
		ArrayList<Groups> list = adGrDao.selectGroups(sqlSession);
				
				return list;
	}

}
