package com.kh.skycastle.admin.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.skycastle.common.model.vo.Attachment;
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
	
	// 이벤트 리스트 조회용
	public ArrayList<Event> selectEvent(SqlSessionTemplate sqlSession){
		return (ArrayList)sqlSession.selectList("adBoardMapper.selectEvent");
	}
	
	// 이벤트 등록 
	public int insertAdEvent(SqlSessionTemplate sqlSession, Event e) {
		return sqlSession.insert("adBoardMapper.insertAdEvent", e);
	}
	
	public int insertAttachment(SqlSessionTemplate sqlSession, Attachment[] at) {
		int result1 =1;
		int result2 =0;
		for(int i=0; i<at.length; i++) {
		  result2 = sqlSession.insert("adBoardMapper.insertAttachment", at[i]);			
		  result1 =  result1*result2;
		}
	
		return result1;
	}
	
	// 이벤트 상세 조회용
	public Event adSelectEvent(SqlSessionTemplate sqlSession,int eno) {
		return sqlSession.selectOne("adBoardMapper.adSelectEvent", eno);
	}
	
	// 이벤트 수정용
	public int updateAdEvent(SqlSessionTemplate sqlSession, Event e) {
		return sqlSession.update("adBoardMapper.updateAdEvent", e);
	}
	
	public int updateAttachment(SqlSessionTemplate sqlSession, Attachment at) {
		return sqlSession.update("adBoardMapper.updateAttachment", at);
	}
	
	// 이벤트 삭제용
	public int deleteAdEvent(SqlSessionTemplate sqlSession,int eno) {
		return sqlSession.update("adBoardMapper.deleteAdEvent", eno);
	}
	
	public int deleteAttachment(SqlSessionTemplate sqlSession, String changeName) {
		return sqlSession.update("adBoardMapper.deleteAttachment", changeName);
	}
}
