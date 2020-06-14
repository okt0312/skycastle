package com.kh.skycastle.groups.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.skycastle.groups.model.dao.ReportDao;
import com.kh.skycastle.groups.model.vo.Report;

@Service("ReportService")
public class ReportServiceImpl implements ReportService {
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private ReportDao ReportDao;
	@Override
	public int insertReport(Report report) {
		return ReportDao.insertReport(sqlSession,report);
	}

}
