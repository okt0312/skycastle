package com.kh.skycastle.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.skycastle.member.model.vo.Member;

@Repository("mDao")
public class MemberDao {

    public Member loginMember(SqlSessionTemplate sqlSession, Member m)
    {
        return sqlSession.selectOne("memberMapper.loginUser", m);
    }
    
    public int insertMember(SqlSessionTemplate sqlSession, Member m) {
    	return sqlSession.insert("memberMapper.insertMember", m);
    }
    
    public int idCheck(SqlSessionTemplate sqlSession, String userId) {
    	return sqlSession.selectOne("memberMapper.idCheck", userId); 			
    }
    
    public int changePwd(SqlSessionTemplate sqlSession, Member m) {
    	return sqlSession.update("memberMapper.changePwd", m);
    }

}

