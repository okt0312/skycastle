package com.kh.skycastle.admin.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.skycastle.reservation.model.vo.Space;

@Repository
public class AdSpaceDao {

	
	//공간 리스트조회
		public ArrayList<Space> selectSpace(SqlSessionTemplate sqlSession){
			return (ArrayList)sqlSession.selectList("adSpaceMapper.selectSpace");
		}
		//공간 사용가능 기능
		public int adUsableSpace(SqlSessionTemplate sqlSession, int sno) {
			return sqlSession.delete("adSpaceMapper.adUsableSpace", sno);
		
		}
		//공강 사용불가 기능
		public int adUnusableSpace(SqlSessionTemplate sqlSession, int sno) {
			return sqlSession.delete("adSpaceMapper.adUnusableSpace", sno);
		
		}
}
