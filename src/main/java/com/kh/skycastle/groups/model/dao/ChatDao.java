package com.kh.skycastle.groups.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.skycastle.groups.model.vo.Chat;

@Repository("chatDao")
public class ChatDao {

	public ArrayList<Chat> selectChatList(SqlSessionTemplate sqlSession, Chat c)
	{
		ArrayList<Chat> list = (ArrayList)sqlSession.selectList("chatMapper.selectChatList", c);
		
		for(int i = 0; i < list.size(); i++)
		{
			list.get(i).setChatContent(list.get(i).getChatContent().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>"));
			
			int chatTime = Integer.parseInt(list.get(i).getChatTime().substring(11, 13));
			String timeType = "오전";
			if(Integer.parseInt(list.get(i).getChatTime().substring(11, 13)) >= 12)
			{
				timeType = "오후";
				chatTime -= 12;
			}
			
			list.get(i).setChatTime(list.get(i).getChatTime().substring(0, 11) + "&nbsp;" + timeType + "&nbsp;" + chatTime + ":" + list.get(i).getChatTime().substring(14, 16) + "");
		}
		
		return list;
	}
	
	public int insertChat(SqlSessionTemplate sqlSession, Chat c)
	{
		return sqlSession.insert("chatMapper.insertChat", c);
	}
	
	public ArrayList<Chat> getChatListByRecent(SqlSessionTemplate sqlSession, Chat c)
	{
		ArrayList<Chat> list = (ArrayList)sqlSession.selectList("chatMapper.getChatListByRecent", c);
		
		for(int i = 0; i < list.size(); i++)
		{
			list.get(i).setChatContent(list.get(i).getChatContent().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>"));
			
			int chatTime = Integer.parseInt(list.get(i).getChatTime().substring(11, 13));
			String timeType = "오전";
			if(Integer.parseInt(list.get(i).getChatTime().substring(11, 13)) >= 12)
			{
				timeType = "오후";
				chatTime -= 12;
			}
			
			list.get(i).setChatTime(list.get(i).getChatTime().substring(0, 11) + "&nbsp;" + timeType + "&nbsp;" + chatTime + ":" + list.get(i).getChatTime().substring(14, 16) + "");
		}
		
		return list;
	}
}
