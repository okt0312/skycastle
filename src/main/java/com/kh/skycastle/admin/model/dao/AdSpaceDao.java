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
}
