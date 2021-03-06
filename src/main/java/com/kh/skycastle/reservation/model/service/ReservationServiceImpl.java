package com.kh.skycastle.reservation.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.skycastle.common.model.vo.PageInfo;
import com.kh.skycastle.coupon.model.vo.Coupon;
import com.kh.skycastle.member.model.vo.Grade;
import com.kh.skycastle.reservation.model.dao.ReservationDao;
import com.kh.skycastle.reservation.model.vo.Reservation;
import com.kh.skycastle.reservation.model.vo.ReservationTime;
import com.kh.skycastle.reservation.model.vo.Seat;
import com.kh.skycastle.reservation.model.vo.Space;

@Service("rService")
public class ReservationServiceImpl implements ReservationService{
	@Autowired
	public SqlSessionTemplate sqlSession;
	@Autowired
	private ReservationDao rDao;
	
	

	@Override
	public ArrayList<Coupon> selectCouponList(int userNo) {
		return rDao.selectCouponList(sqlSession, userNo);
	}

	@Override
	public Grade selectGrade(int userNo) {
		return rDao.selectGrade(sqlSession, userNo);
	}

	@Override
	public Seat selectSeat(int seatNo) {
		return rDao.selectSeat(sqlSession, seatNo);
	}

	@Override
	public int insertReservation(Reservation reservation) {
		int result1 = rDao.insertReservation(sqlSession, reservation);
		int result2 =  rDao.insertReservationTime(sqlSession, reservation);
		int result3 = rDao.updateUesdCoupon(sqlSession, reservation);
		return result1*result2;
	}

	@Override
	public ArrayList<Reservation> seatStatus() {
		return rDao.seatStatus(sqlSession);
	}

	@Override
	public ArrayList<Reservation> selectSeatReservationTime(int seatNo) {
		return rDao.selectSeatReservationTime(sqlSession,seatNo);
	}

	
	//공간쪽 시작 
	
	@Override
	public int selectSpaceCount() {
		return rDao.selectSpaceCount(sqlSession);
	}

	@Override
	public ArrayList<Space> selectSpaceList(PageInfo pi) {
		return rDao.selectSpaceList(sqlSession,pi);
	}
	
	@Override
	public ArrayList<Space> selectSpaceList() {
		return rDao.selectSpaceList(sqlSession);
	}

	@Override
	public ArrayList<Space> spaceSearchList(int keyword) {
		return rDao.spaceSearchList(sqlSession,keyword);
	}

	@Override
	public Space selectSpace(int spaceNo) {
		return rDao.selectSpace(sqlSession,spaceNo);
	}

	@Override
	public int insertSpaceReservation(Reservation reservation) {
		int result1 = rDao.insertReservation(sqlSession, reservation);
		String[] usedDate = reservation.getUsedDate().split(",");
		String[] startTime = reservation.getStartTime().split(",");
		String[] endTime = reservation.getEndTime().split(",");
		
		ReservationTime reservTime = new ReservationTime();
		int result2 =0;
		for(int i=0; i<usedDate.length; i++) {
			reservTime.setUsedDate(usedDate[i]);
			reservTime.setStartTime(startTime[i]);
			reservTime.setEndTime(endTime[i]);
			result2 = rDao.insertReservationTimeArray(sqlSession, reservTime);
			result1 = result1*result2;
		}
		int result3 = rDao.updateUesdCoupon(sqlSession, reservation);
		return result1;
		
	}

	@Override
	public ArrayList<Reservation> selectSpaceReservationTime(Reservation reservation) {
		
		return rDao.selectSpaceReservationTime(sqlSession,reservation);
	}

	

}
