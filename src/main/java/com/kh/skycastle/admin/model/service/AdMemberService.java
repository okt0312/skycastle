package com.kh.skycastle.admin.model.service;

import java.util.ArrayList;

import com.kh.skycastle.member.model.vo.Grade;
import com.kh.skycastle.member.model.vo.Member;

public interface AdMemberService {
	
	ArrayList<Member> selectMember();
	
	ArrayList<Grade> selectGrade();
}
