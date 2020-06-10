package com.kh.skycastle.admin.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.skycastle.admin.model.dao.AdBoardDao;
import com.kh.skycastle.common.model.vo.Attachment;
import com.kh.skycastle.cs.model.vo.Event;
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
	
	//공지사항 등록용
	@Override
	public int insertAdNotice(Notice n) {
		return adBoDao.insertAdNotice(sqlSession,n);
	}
	
	//공지사항 수정용
	@Override
	public int updateAdNotice(Notice n) {
		return adBoDao.updateAdNotice(sqlSession,n);
		
	}
	
	//공지사항 삭제용
	@Override
	public int deleteAdNotice(int noticeNo) {
		return adBoDao.deleteAdNotice(sqlSession,noticeNo);
	}
	
	//이벤트 조회
	@Override
	public ArrayList<Event> selectEvent() {
		return adBoDao.selectEvent(sqlSession);
	}
	//이벤트 상세페이지 조회
	@Override
	public Event adSelectEvent(int eno) {
		return adBoDao.adSelectEvent(sqlSession,eno);
	}
	
	// 이벤트 등록
	@Override
	public int insertAdEvent(Event e) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	// 이벤트 수정
	@Override
	public int updateAdEvent(Event e, Attachment at) {
		
		int result1 = adBoDao.updateAdEvent(sqlSession, e);
		int result2 = adBoDao.updateAttachment(sqlSession , at);
		
		return  result1 * result2;
	}
	
	// 이벤트 삭제
	@Override
	public int deleteAdEvent(int eventNo) {
		// TODO Auto-generated method stub
		return 0;
	}
	
}
