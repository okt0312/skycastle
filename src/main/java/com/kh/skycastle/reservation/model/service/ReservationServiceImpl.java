package com.kh.skycastle.reservation.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.skycastle.coupon.model.vo.Coupon;
import com.kh.skycastle.member.model.vo.Grade;
import com.kh.skycastle.reservation.model.dao.ReservationDao;
import com.kh.skycastle.reservation.model.vo.Seat;
import com.kh.skycastle.reservation.model.vo.StatusCount;

@Service("rService")
public class ReservationServiceImpl implements ReservationService{
	@Autowired
	public SqlSessionTemplate sqlSession;
	@Autowired
	private ReservationDao rDao;
	
	@Override
	public StatusCount seatStatusCount() {
		StatusCount sc = new StatusCount();
		sc.setSeatAllCount(rDao.seatAllCount(sqlSession));
//		sc.setSeatUsedCount(rDao.seatUsedCount(sqlSession));
//		sc.setSeatUnUsedCount(rDao.seatUnUsedCount(sqlSession));
//		sc.setSeatRepairingCount(rDao.seatRepairingCount(sqlSession));
		
		return sc;
	}

	@Override
	public ArrayList<Coupon> selectCouponList(int userNo) {
		return rDao.selectCouponList(sqlSession, userNo);
	}

	@Override
	public Grade selectGrade(int userNo) {
		return rDao.selectGrade(sqlSession, userNo);
	}

	@Override
	public Seat selectSeat(int userNo) {
		return rDao.selectSeat(sqlSession, userNo);
	}

}
