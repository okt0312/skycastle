package com.kh.skycastle.myPage.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.skycastle.common.model.vo.PageInfo;
import com.kh.skycastle.coupon.model.vo.Coupon;
import com.kh.skycastle.cs.model.vo.Qna;
import com.kh.skycastle.member.model.vo.Member;
import com.kh.skycastle.reservation.model.vo.Seat;
import com.kh.skycastle.reservation.model.vo.Space;

@Repository("pDao")
public class MypageDao {

	public Member updateCheckPwd(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("memberMapper.updateCheckPwd", m );
		
	}
	
	public int updateMember(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("memberMapper.updateMember",m);
	}
	
	public int deleteMember(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("memberMapper.deleteMember", m);
		
	}
		
	public int updatePwd(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("memberMapper.updatePwd", m);
	}
	
	public int selectListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("memberMapper.selectListCount");
	}
	
	public ArrayList<Coupon> selectList(SqlSessionTemplate sqlSession, PageInfo pi) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("memberMapper.selectList", null , rowBounds);
	}
	
	public int qselectListCount(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("csMapper.qselectListCount", m);
	}
	
	
	public ArrayList<Qna> qselectList(SqlSessionTemplate sqlSession, PageInfo pi, Member m) {
		
		int offset =(pi.getCurrentPage() -1) * pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("csMapper.qselectList", m, rowBounds);
	}
	
//	public int increaseCount(SqlSessionTemplate sqlSession, int bno) {
//		
//	}
	
	public Qna selectQna(SqlSessionTemplate sqlSession, int qno) {
		
		return sqlSession.selectOne("csMapper.selectQna", qno);
	}
	
	public int deleteQna(SqlSessionTemplate sqlSession,  int qno)  {
		return sqlSession.update("csMapper.deleteQna", qno);
	}
	
	public int updateQna(SqlSessionTemplate sqlSession, Qna q) {
		return sqlSession.update("csMapper.updateQna", q);
	}
	
	public int spaceselectListCount(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("reservationMapper.spaceselectListCount", m);
	}
	
	public ArrayList<Space> spaceselectList(SqlSessionTemplate sqlSession, PageInfo pi, Member m) {
		
		
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("reservationMapper.spaceselectList",m, rowBounds);
		
	}
	
	public int seatselectListCount(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("reservationMapper.seatselectListCount", m);
	}
	
	
	public ArrayList<Seat> seatselectList(SqlSessionTemplate sqlSession, PageInfo pi, Member m) {
		
		
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("reservationMapper.seatselectList",m, rowBounds);
		
	}
	
	public int mchangePwd(SqlSessionTemplate sqlSession, Member m) {
    	return sqlSession.update("memberMapper.mchangePwd", m);
    }
	
}
