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
}
