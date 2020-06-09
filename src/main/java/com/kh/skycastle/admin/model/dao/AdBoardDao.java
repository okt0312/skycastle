package com.kh.skycastle.admin.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.skycastle.cs.model.vo.Event;
import com.kh.skycastle.cs.model.vo.Notice;

@Repository
public class AdBoardDao {
	
	//공지사항 리스트조회
	public ArrayList<Notice> selectNotice(SqlSessionTemplate sqlSession){
		return (ArrayList)sqlSession.selectList("adBoardMapper.selectNotice");
	}
	
	//공지사항 상세페이지
	public Notice selectNoDetail(SqlSessionTemplate sqlSession,int bno) {
		
		return sqlSession.selectOne("adBoardMapper.selectNoDetail", bno);
		
	}
	//공지사항 등록용
	public int insertAdNotice(SqlSessionTemplate sqlSession, Notice n) {
		return sqlSession.insert("adBoardMapper.insertAdNotice",n);
	}
	
	//공지사항 수정용
	public int updateAdNotice(SqlSessionTemplate sqlSession, Notice n) {
		return sqlSession.update("adBoardMapper.updateAdNotice",n);
	}
	
	//공지사항 삭제용
	public int deleteAdNotice(SqlSessionTemplate sqlSession,int noticeNo) {
		return sqlSession.delete("adBoardMapper.deleteAdNotice",noticeNo);
	}
	
	//이벤트 리트스 조회용
	public ArrayList<Event> selectEvent(SqlSessionTemplate sqlSession){
		return (ArrayList)sqlSession.selectList("adBoardMapper.selectEvent");
	}
	
	//이벤트 상세 조회용
	public Event adSelectEvent(SqlSessionTemplate sqlSession,int eno) {
		
		return sqlSession.selectOne("adBoardMapper.adSelectEvent", eno);
		
	}
	
}
