package com.kh.skycastle.reservation.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.skycastle.common.model.vo.PageInfo;
import com.kh.skycastle.coupon.model.vo.Coupon;
import com.kh.skycastle.member.model.vo.Grade;
import com.kh.skycastle.reservation.model.vo.Reservation;
import com.kh.skycastle.reservation.model.vo.ReservationTime;
import com.kh.skycastle.reservation.model.vo.Seat;
import com.kh.skycastle.reservation.model.vo.Space;

@Repository("rDao")
public class ReservationDao {
	
	
	public ArrayList<Reservation> seatStatus(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("reservationMapper.selectSeatStatusList");
	}
	
	public ArrayList<Coupon> selectCouponList(SqlSessionTemplate sqlSession, int userNo){
		return (ArrayList)sqlSession.selectList("reservationMapper.selectCouponList",userNo);
	}
	
	public Grade selectGrade(SqlSessionTemplate sqlSession, int userNo) {
		return sqlSession.selectOne("reservationMapper.selectGrade",userNo);
	}
	
	public Seat selectSeat(SqlSessionTemplate sqlSession, int seatNo) {
		return sqlSession.selectOne("reservationMapper.selectSeat",seatNo);
	}
	
	public int insertReservation(SqlSessionTemplate sqlSession, Reservation reservation) {
		return sqlSession.insert("reservationMapper.insertReservation",reservation);
	}
	
	public int insertReservationTime(SqlSessionTemplate sqlSession, Reservation reservation) {
		return sqlSession.insert("reservationMapper.insertReservationTime",reservation);
	}
	
	public ArrayList<Reservation> selectSeatReservationTime(SqlSessionTemplate sqlSession, int seatNo) {
		return (ArrayList)sqlSession.selectList("reservationMapper.selectSeatReservationTime",seatNo);
	}
	
	//공간쪽 시작
	public int selectSpaceCount(SqlSessionTemplate sqlSession ) {
		return sqlSession.selectOne("reservationMapper.selectSpaceCount");
	}
	
	public ArrayList<Space> selectSpaceList(SqlSessionTemplate sqlSession, PageInfo pi) {
		
				int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
				RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("reservationMapper.selectSpaceList",null, rowBounds);
	}
	
	public ArrayList<Space> spaceSearchList(SqlSessionTemplate sqlSession, int keyword) {
		return (ArrayList)sqlSession.selectList("reservationMapper.spaceSearchList",keyword);
	}
	
	public Space selectSpace(SqlSessionTemplate sqlSession, int spaceNo) {
		return sqlSession.selectOne("reservationMapper.selectSpace",spaceNo);
	}
	
	public int insertReservationTimeArray(SqlSessionTemplate sqlSession, ReservationTime reservTime) {
		return sqlSession.insert("reservationMapper.insertReservationTimeArray",reservTime);
	}
	
	public ArrayList<Reservation> selectSpaceReservationTime(SqlSessionTemplate sqlSession, Reservation reservation) {
		return (ArrayList)sqlSession.selectList("reservationMapper.selectSpaceReservationTime",reservation);
	}
	
	
	
	
}
