package com.kh.skycastle.group.model.service;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.kh.skycastle.common.model.vo.PageInfo;
import com.kh.skycastle.group.model.vo.GroupNotice;
import com.kh.skycastle.group.model.vo.Reply;

@Service("gnService")
public class GroupNoticeServiceImpl implements GroupNoticeService {

	@Override
	public int selectGroupNoticeListCount() {
		return 0;
	}

	@Override
	public ArrayList<GroupNotice> selectGroupNoticeList(PageInfo pi) {
		return null;
	}

	@Override
	public int insertGroupNotice(GroupNotice gn) {
		return 0;
	}

	@Override
	public int increaseGroupNoticeCount(int gnno) {
		return 0;
	}

	@Override
	public GroupNotice selectGroupNotice(int gnno) {
		return null;
	}

	@Override
	public int deleteGroupNotice(int gnno) {
		return 0;
	}

	@Override
	public int updateGroupNotice(GroupNotice gn) {
		return 0;
	}

	@Override
	public ArrayList<Reply> selectReplyList(int gnno) {
		return null;
	}

	@Override
	public int insertReply(Reply r) {
		return 0;
	}

}
