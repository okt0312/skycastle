package com.kh.skycastle.reservation.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

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
	
}
