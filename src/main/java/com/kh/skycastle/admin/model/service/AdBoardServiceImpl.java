package com.kh.skycastle.admin.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.skycastle.admin.model.dao.AdBoardDao;
import com.kh.skycastle.cs.model.vo.Notice;

@Service("adBoService")
public class AdBoardServiceImpl implements AdBoardService {

	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private AdBoardDao adBoDao;
	
	//공지사항 조회페이지 불러오기
	@Override
	public ArrayList<Notice> selectNotice() {
		return adBoDao.selectNotice(sqlSession);
	}
	//공지사항 상세페이지 조회
	@Override
	public Notice selectNoDetail(int bno) {
		return adBoDao.selectNoDetail(sqlSession,bno);
	}
	@Override
	public int insertAdNotice(Notice n) {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public int updateAdNotice(Notice n) {
		return adBoDao.updateAdNotice(sqlSession,n);
		
	}
	@Override
	public int deleteAdNotice(int noticeNo) {
		return adBoDao.deleteAdNotice(sqlSession,noticeNo);
	}
}
