package com.kh.skycastle.member.model.service;

import com.kh.skycastle.member.model.vo.Member;

public interface MemberService {
    // 1. 로그인용 서비스
    Member loginMember(Member m);
    
    // 2. 회원가입용 서비스
    int insertMember(Member m);
    
    // 3. 회원정보 수정용 서비스
    int updateMember(Member m);
    
    // 4. 아이디 중복체크 서비스
    int idCheck(String userId);
    
}
