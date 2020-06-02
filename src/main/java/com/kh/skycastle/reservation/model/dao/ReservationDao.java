package com.kh.skycastle.reservation.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.skycastle.coupon.model.vo.Coupon;

@Repository("rDao")
public class ReservationDao {
	
	public int seatAllCount(SqlSessionTemplate sqlSession) {
		return  sqlSession.selectOne("reservationMapper.seatAllCount");
	}
//	public int seatUsedCount(SqlSessionTemplate sqlSession) {
//		return  sqlSession.selectOne("reservationMapper.seatUsedCount");
//	}
//	public int seatUnUsedCount(SqlSessionTemplate sqlSession) {
//		return  sqlSession.selectOne("reservationMapper.seatUnUsedCount");
//	}
//	public int seatRepairingCount(SqlSessionTemplate sqlSession) {
//		return  sqlSession.selectOne("reservationMapper.seatRepairingCount");
//	}
	
	
	public ArrayList<Coupon> selectCouponList(SqlSessionTemplate sqlSession, int userNo){
		return (ArrayList)sqlSession.selectList("reservationMapper.selectCouponList",userNo);
	}
	
}
