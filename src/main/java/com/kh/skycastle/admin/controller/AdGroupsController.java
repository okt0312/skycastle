package com.kh.skycastle.admin.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.skycastle.admin.model.service.AdGroupsService;
import com.kh.skycastle.group.model.vo.Groups;

//소모임(소모임조회, 개설관리, 소모임게시글관리) 페이지 관련 컨트롤러 입니다
@Controller
public class AdGroupsController {
	
	@Autowired
	private AdGroupsService adGrService;
	
	//메뉴바에서 소모임 조회 페이지 눌렀을때 이동
	@RequestMapping("groupList.ad")
	public String adGroupList(Model model)
	{
		ArrayList<Groups> list = adGrService.selectGroups();
		model.addAttribute("list", list);
		return "admin/adGroupList";
	}
	
	//메뉴바에서 소모임 개설관리 페이지 눌렀을때 이동
	@RequestMapping("groupConfirm.ad")
	public String adGroupConfirm()
	{
		return "admin/adGroupConfirm";
	}
	
	//메뉴바에서 소모임 게시판관리 페이지 눌렀을때 이동
	@RequestMapping("groupBoMgmt.ad")
	public String adGroupBoMgmt()
	{
		return "admin/adGroupBoMgmt";
	}
	
}
