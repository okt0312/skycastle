package com.kh.skycastle.groups.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.skycastle.groups.model.service.ChatService;
import com.kh.skycastle.groups.model.vo.Chat;

@Controller
public class ChatController {

	@Autowired
	private ChatService chatService;
	
	@RequestMapping("chatForm.gr")
	public String chatForm()
	{
		String nowTime = "";
//		ArrayList<Chat> list = chatService.selectChatList(nowTime);
		
		
		return "groups/chatForm";
	}
	
	@ResponseBody
	@RequestMapping("chatSubmit.gr")
	public int chatSubmit(Chat c)
	{
		int result = 0;
		
		if(c.getChatName() == null || c.getChatName().equals("") || c.getChatContent() == null || c.getChatContent().equals(""))
		{
			result = 0;
		}
		else
		{
			result = chatService.insertChat(c);
		}
		return result;
	}

	@ResponseBody
	@RequestMapping(value = "chatList.gr", produces="text/html; charset=UTF-8")
	public void chatList(String listType, HttpServletResponse response)
	{
		response.setCharacterEncoding("utf-8");
		if(listType == null || listType.equals(""))
		{
			try 
			{
				response.getWriter().write("");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		else if(listType.equals("today"))
		{
			try {
				response.getWriter().write(getToday());
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		else
		{
			try
			{
				Integer.parseInt(listType);
				response.getWriter().write(getId(listType));
			}
			catch(IOException e)
			{
				try {
					response.getWriter().write("");
				} catch (IOException e1) {
					e1.printStackTrace();
				}
			}
		}
	}
	
	public String getToday()
	{
		StringBuffer result = new StringBuffer("");
		result.append("{\"result\":[");
		ArrayList<Chat> chatList = chatService.selectChatList(new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
		for(int i = 0; i < chatList.size(); i++)
		{
			result.append("[{\"value\": \"" + chatList.get(i).getChatName() + "\"},");
			result.append("{\"value\": \"" + chatList.get(i).getChatContent() + "\"},");
			result.append("{\"value\": \"" + chatList.get(i).getChatTime() + "\"}]");
			
			if(i != chatList.size() - 1)
			{
				result.append(",");
			}
		}
		
		result.append("], \"last\":\"" + chatList.get(chatList.size() - 1).getChatId() + "\"}");
		System.out.println(chatList);
		return result.toString();
	}
	
	public String getId(String chatId)
	{
		StringBuffer result = new StringBuffer("");
		result.append("{\"result\":[");
		ArrayList<Chat> chatList = chatService.getChatListByRecent(chatId);
		System.out.println(chatList);
		for(int i = 0; i < chatList.size(); i++)
		{
			result.append("[{\"value\": \"" + chatList.get(i).getChatName() + "\"},");
			result.append("{\"value\": \"" + chatList.get(i).getChatContent() + "\"},");
			result.append("{\"value\": \"" + chatList.get(i).getChatTime() + "\"}]");
			
			if(i != chatList.size() - 1)
			{
				result.append(",");
			}
		}
		
		result.append("], \"last\":\"" + chatList.get(chatList.size() - 1).getChatId() + "\"}");
		System.out.println(chatList);
		return result.toString();
	}
	
}
