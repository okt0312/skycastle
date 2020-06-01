package com.kh.skycastle.reservation.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.skycastle.reservation.model.dao.ReservationDao;
import com.kh.skycastle.reservation.model.vo.StatusCount;

@Service("rService")
public class ReservationServiceImpl implements ReservationService{
	@Autowired
	public SqlSessionTemplate sqlSession;
	@Autowired
	private ReservationDao rDao;
	
	@Override
	public StatusCount SeatStatusCount() {
		StatusCount sc = new StatusCount();
		sc.setSeatAllCount(rDao.seatAllCount(sqlSession));
//		sc.setSeatUsedCount(rDao.seatUsedCount(sqlSession));
//		sc.setSeatUnUsedCount(rDao.seatUnUsedCount(sqlSession));
//		sc.setSeatRepairingCount(rDao.seatRepairingCount(sqlSession));
		
		return sc;
	}

}
