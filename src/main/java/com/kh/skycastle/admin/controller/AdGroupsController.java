package com.kh.skycastle.admin.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.kh.skycastle.admin.model.service.AdGroupsService;
import com.kh.skycastle.groups.model.vo.GroupNotice;
import com.kh.skycastle.groups.model.vo.Groups;
import com.kh.skycastle.groups.model.vo.Reply;


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
	@RequestMapping(value="updateGroups.ad", produces="application/json; charset=utf-8")
	public int updateGrMgmt(Groups g, HttpSession session)
	{	System.out.println(g);
		
		int result = adGrService.updateGrMgmt(g);
		System.out.println(result);

		
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
	
	//소모임 개설관리 승인눌렀을때
	@ResponseBody //뷰명아니고 응답데이터야!
	@RequestMapping(value="confirmGroup.ad",produces= "application/json; charset=utf-8")
	public String acceptGroups(String[] grCoCheck, Model model) {
	
		
		int result = adGrService.acceptGroups(grCoCheck);
		
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
			
			
			return new Gson().toJson(list);
			
	
		
	}
	
	
	//소모임 개설관리 거절눌렀을때
		@ResponseBody //뷰명아니고 응답데이터야!
		@RequestMapping(value="rejectionGroup.ad",produces= "application/json; charset=utf-8")
		public String rejectionGroup(String[] grCoCheck, Model model) {
		
			
			int result = adGrService.rejectionGroups(grCoCheck);
			//System.out.println(result);
			
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
				
				
				return new Gson().toJson(list);
				
		
			
		}
	
	
	
	
	
	
	
	
	
	
	//메뉴바에서 소모임 게시판관리 페이지 눌렀을때 이동
	@RequestMapping("groupBoMgmt.ad")
	public ModelAndView adGroupBoMgmt(ModelAndView mv){
		ArrayList<GroupNotice> list = adGrService.selectGrBoard();
		
		mv.addObject("list", list).setViewName("admin/adGroupBoMgmt");
		
		return mv;
		
		
	}
	
	
	//소모임 게시글 관리에서 tr눌렀을때 상세페이지ㄱㄱ
	@RequestMapping("adGrDetail.bo")
	public  ModelAndView selectNoDetail(int gno, ModelAndView mv) {
		
		GroupNotice g = adGrService.selectGrNoBoard(gno);
		mv.addObject("g", g);
		mv.setViewName("admin/adGrBoDetailView");
		return mv;
	}
	
	
	
	
	
	//공지사항 삭제
	
			@RequestMapping("deleteGrNo.ad")
			public String deleteAdGrNotice(int gno, Model model, HttpSession session) {
				int result = adGrService.deleteAdGrNotice(gno);
				
				if(result > 0)
				{
					
					return "redirect:groupBoMgmt.ad";
				}
				else
				{
					return "삭제 실패";
				}
			}
	
	
	
	
	
	
	//소모임상세에서 댓글 리스트
	@ResponseBody
	@RequestMapping(value="rlist.ad", produces="application/json; charset=utf-8")
	public String selectAdReplyList(int gno) {
		
		ArrayList<Reply> list = adGrService.selectAdReplyList(gno);
		
		//System.out.println(gno);
		//System.out.println(list);
		
		return new GsonBuilder().setDateFormat("yyyy년 MM월 dd일 HH:mm:ss").create().toJson(list);
	}
	//소모임 상세에서 댓글 삭제
	@ResponseBody
	@RequestMapping(value = "rDelete.ad", produces = "text/html; charset=utf-8")
	public String deleteAdReply(int rno, Model model)
	{	
		int result = adGrService.deleteAdReply(rno);
		
		if(result > 0)
		{
			return "댓글 삭제 성공";
		}
		else
		{
			return "댓글 삭제 실패";
		}
	}
	
}
