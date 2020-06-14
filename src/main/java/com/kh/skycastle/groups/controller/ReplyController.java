package com.kh.skycastle.groups.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.GsonBuilder;
import com.kh.skycastle.groups.model.service.ReplyService;
import com.kh.skycastle.groups.model.vo.Reply;

public class ReplyController {
	
	@Autowired
	private ReplyService rpService;
	
	// 댓글 ajax
	@ResponseBody
	@RequestMapping(value="replylist.gr", produces="application/json; charset=utf-8")
	public String selectReplyList(int noticeNo) {
		
		ArrayList<Reply> list = rpService.selectReplyList(noticeNo);
		
		return new GsonBuilder().setDateFormat("yyyy년 MM월 dd일 HH:mm:ss").create().toJson(list);
	}
	
	@ResponseBody
	@RequestMapping(value="replyInsert.gr")
	public String insertReply(Reply r) {
		
		int result = rpService.insertReply(r);
		
		if(result > 0) {
			return "success";
		} else {
			return "fail";
		}
	}
}
