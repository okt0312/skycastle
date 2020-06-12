package com.kh.skycastle.groups.model.service;

import java.util.ArrayList;

import com.kh.skycastle.groups.model.vo.Chat;

public interface ChatService {
	
	ArrayList<Chat> selectChatList(String nowTime, String groupNo);

	int insertChat(Chat c);
	
	ArrayList<Chat> getChatListByRecent(String chatId, String groupNo);
}
