package com.kh.skycastle.groups.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.skycastle.groups.model.dao.ChatDao;
import com.kh.skycastle.groups.model.vo.Chat;

import javafx.scene.chart.Chart;

@Service("chatService")
public class ChatServiceImpl implements ChatService{

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private ChatDao chatDao;

	@Override
	public ArrayList<Chat> selectChatList(String nowTime, String groupNo) {
		Chat c = new Chat();
		c.setNowTime(nowTime);
		c.setGroupNo(groupNo);
		return chatDao.selectChatList(sqlSession, c);
	}

	@Override
	public int insertChat(Chat c) {
		return chatDao.insertChat(sqlSession, c);
	}

	@Override
	public ArrayList<Chat> getChatListByRecent(String chatId, String groupNo) {
		Chat c = new Chat();
		c.setChatId(chatId);
		c.setGroupNo(groupNo);
		return chatDao.getChatListByRecent(sqlSession, c);
	}
	
}
