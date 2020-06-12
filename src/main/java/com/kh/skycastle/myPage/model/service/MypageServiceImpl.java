package com.kh.skycastle.myPage.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.skycastle.common.model.vo.PageInfo;
import com.kh.skycastle.coupon.model.vo.Coupon;
import com.kh.skycastle.cs.model.vo.Qna;
import com.kh.skycastle.member.model.vo.Member;
import com.kh.skycastle.myPage.model.dao.MypageDao;
import com.kh.skycastle.reservation.model.vo.Seat;
import com.kh.skycastle.reservation.model.vo.Space;


@Service("pService")
public class MypageServiceImpl implements MypageService {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private MypageDao pDao;
	
	
	@Override
	public Member updateCheckPwd(Member m) {
		
			return pDao.updateCheckPwd(sqlSession, m); 
		
		
		
		
	}


	@Override
	public int insertMember(Member m) {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public int updateMember(Member m) {
		
		return pDao.updateMember(sqlSession,m);
	}


	@Override
	public int deleteMember(Member m) {
		
		return pDao.deleteMember(sqlSession, m);
		
	}


	@Override
	public int updatePwd(Member m) {
		
		return pDao.updatePwd(sqlSession, m);
	}


	@Override
	public int selectListCount(int userNo) {
		
		return pDao.selectListCount(sqlSession,userNo);
	}


	@Override
	public ArrayList<Coupon> selectList(PageInfo pi,int userNo) {
	
		return pDao.selectList(sqlSession, pi, userNo);
	}


	@Override
	public int qselectListCount(Member m) {
		
		return pDao.qselectListCount(sqlSession, m);
	}
	

	@Override
	public ArrayList<Qna> qselectList(PageInfo pi, Member m) {
		
		return pDao.qselectList(sqlSession, pi, m);
	}


//	@Override
//	public int increaseCount(int qno) {
//	
//		return pDao.increaseCount(sqlSession,qno);
//	}


	@Override
	public Qna selectQna(int qno) {
		return pDao.selectQna(sqlSession, qno);
	}


	@Override
	public int deleteQna(int qno) {
		
		return pDao.deleteQna(sqlSession, qno);
	}


	@Override
	public int updateQna(Qna q) {
		
		return pDao.updateQna(sqlSession, q);
	}


	@Override
	public int spaceselectListCount(Member m) {
		
		return pDao.spaceselectListCount(sqlSession,m);
	}


	@Override
	public ArrayList<Space> spaceselectList(PageInfo pi, Member m) {
		return pDao.spaceselectList(sqlSession, pi, m);
	}
	
	
	@Override
	public int seatselectListCount(Member m) {
		
		return pDao.seatselectListCount(sqlSession, m);
	}
	
	
	@Override
	public ArrayList<Seat> seatselectList(PageInfo pi, Member m) {
		
		return pDao.seatselectList(sqlSession, pi, m);
	}


	@Override
	public int mchangePwd(Member m) {
		return pDao.mchangePwd(sqlSession, m);
		
	}


	@Override
	public int expirationCouponUpdate(int userNo) {
		ArrayList<Coupon> expirationCouponNoList = pDao.expirationCouponNoList(sqlSession, userNo); 
		//System.out.println(expirationCouponNoList);
		for(int i=0; i<expirationCouponNoList.size(); i++) {
			Coupon coupon = new Coupon();
			coupon.setUserNo(userNo);
			coupon.setCouponCode(expirationCouponNoList.get(i).getCouponCode());
			pDao.expirationCouponUpdate(sqlSession,coupon);
		}
		return 0;
	}


	




	
	
		
	

}
