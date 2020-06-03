package com.kh.skycastle.admin.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.skycastle.admin.model.service.AdGroupsService;
import com.kh.skycastle.groups.model.vo.Groups;


//소모임(소모임조회, 개설관리, 소모임게시글관리) 페이지 관련 컨트롤러 입니다
@Controller
public class AdGroupsController {
	
	@Autowired
	private AdGroupsService adGrService;
	
	//메뉴바에서 소모임 조회 페이지 눌렀을때 이동 + 리스트나타남+카테고리값인 숫자를 글자로바꿈
	@RequestMapping("groupList.ad")
	public ModelAndView adGroupList(ModelAndView mv){
		
		ArrayList<Groups> list = adGrService.selectGroups();
		
		for(Groups g : list)
		{
			if(g.getGroupCategory().equals("1"))
			{
				g.setGroupCategory("대입");
			}
			else if(g.getGroupCategory().equals("2"))
			{
				g.setGroupCategory("공무원임용");
			}
			else if(g.getGroupCategory().equals("3"))
			{
				g.setGroupCategory("어학회화");
			}
			else if(g.getGroupCategory().equals("4"))
			{
				g.setGroupCategory("자격증");
			}
			else if(g.getGroupCategory().equals("5"))
			{
				g.setGroupCategory("기타");
			}
		}
		mv.addObject("list", list).setViewName("admin/adGroupList");
		
		return mv;
	}
	
	//소모임조회에서 모달창 소모임정보 수정하는거
	@ResponseBody
	@RequestMapping(value = "updateGroups.ad", produces = "application/json; charset=utf-8")
	public int updateGrMgmt(Groups g, HttpSession session)
	{	
		int result = adGrService.updateGrMgmt(g);
				
				
				return result;
	}
	
	
	//소모임조회에서 소모임 삭제할때
	@ResponseBody
	@RequestMapping(value = "deleteGroups.ad", produces = "text/html; charset=utf-8")
	public String deleteMember(int grNo, Model model)
	{	
		int result = adGrService.deleteGrMgmt(grNo);
		
		if(result > 0)
		{
			return "소모임 삭제 성공";
		}
		else
		{
			return "소모임 삭제 실패";
		}
	}
	
	
	
	
	//메뉴바에서 소모임 개설관리 페이지 눌렀을때 이동
	@RequestMapping("groupConfirm.ad")
	public ModelAndView adGroupConfirm(ModelAndView mv){
		
		ArrayList<Groups> list = adGrService.selectGrConfirm();
		
		for(Groups g : list)
		{
			if(g.getGroupCategory().equals("1"))
			{
				g.setGroupCategory("대입");
			}
			else if(g.getGroupCategory().equals("2"))
			{
				g.setGroupCategory("공무원임용");
			}
			else if(g.getGroupCategory().equals("3"))
			{
				g.setGroupCategory("어학회화");
			}
			else if(g.getGroupCategory().equals("4"))
			{
				g.setGroupCategory("자격증");
			}
			else if(g.getGroupCategory().equals("5"))
			{
				g.setGroupCategory("기타");
			}
		}
		
		mv.addObject("list", list).setViewName("admin/adGroupConfirm");
		
		return mv;
		
	}
	
	//메뉴바에서 소모임 게시판관리 페이지 눌렀을때 이동
	@RequestMapping("groupBoMgmt.ad")
	public String adGroupBoMgmt(){
		return "admin/adGroupBoMgmt";
	}
	
}
