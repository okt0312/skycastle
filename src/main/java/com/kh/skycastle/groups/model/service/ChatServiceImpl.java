package com.kh.skycastle.groups.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.skycastle.groups.model.dao.ChatDao;
import com.kh.skycastle.groups.model.vo.Chat;

@Service("chatService")
public class ChatServiceImpl implements ChatService{

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private ChatDao chatDao;

	@Override
	public ArrayList<Chat> selectChatList(String nowTime) {
		return chatDao.selectChatList(sqlSession, nowTime);
	}

	@Override
	public int insertChat(Chat c) {
		return chatDao.insertChat(sqlSession, c);
	}

	@Override
	public ArrayList<Chat> getChatListByRecent(String chatId) {
		
		return chatDao.getChatListByRecent(sqlSession, chatId);
	}
	
}
