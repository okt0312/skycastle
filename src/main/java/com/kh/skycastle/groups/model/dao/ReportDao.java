package com.kh.skycastle.groups.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.skycastle.groups.model.vo.Report;

@Repository("ReportDao")
public class ReportDao {
	public int insertReport(SqlSessionTemplate sqlSession, Report report) {
		return sqlSession.insert("reportMapper.insertReport", report);
	}
}
