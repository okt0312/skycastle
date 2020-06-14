package com.kh.skycastle.groups.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.skycastle.common.model.vo.PageInfo;
import com.kh.skycastle.common.template.Pagination;
import com.kh.skycastle.groups.model.dto.GroupDto;
import com.kh.skycastle.groups.model.service.GroupService;
import com.kh.skycastle.groups.model.vo.Dips;
import com.kh.skycastle.groups.model.vo.GroupManage;
import com.kh.skycastle.groups.model.vo.Groups;
import com.kh.skycastle.member.model.vo.Member;
import com.kh.skycastle.reservation.model.service.ReservationService;
import com.kh.skycastle.reservation.model.vo.Space;

// 메인페이지에서 소모임기능 관련 컨트롤러
@Controller
public class GroupController {
	
	@Autowired
	private GroupService gService;
	
	@Autowired
	private ReservationService rService;
	
	@RequestMapping("groupList.gr")
	public String selectGroupListAll(int currentPage, GroupDto gd, Model model) {
		
		int groupListCount = gService.selectGroupListCount();
		
		PageInfo pi = Pagination.getPageInfo(groupListCount, currentPage, 10, 5);
		ArrayList<Groups> list = gService.selectGroupListAll(pi, gd);
		
		model.addAttribute("pi", pi);
		model.addAttribute("list", list);
		
		return "groups/groupListView";
	}
	
	@RequestMapping("groupDetail.gr")
	public ModelAndView selectGroup(int gno, int userNo, ModelAndView mv) {
		
		ArrayList<GroupDto> g = gService.selectGroup(gno);
		Dips d = new Dips(userNo, gno);
		int countDips = gService.countDips(d);
		
		mv.addObject("list", g);
		mv.addObject("count", countDips);
		
		mv.setViewName("groups/groupDetail");
		
		return mv;
	}
	
	// 찜 확인여부 조회하기위해 호출하는 찜 리스트
	@ResponseBody
	@RequestMapping("selectDipsList.gr")
	public int selectDipsList(Dips d){
		int result = gService.selectDipsList(d);
		return result;
	}
	
	// 찜취소
	@ResponseBody
	@RequestMapping(value="dipsIn.gr", produces="application/json; charset=utf-8")
	public int dipsIn(Dips d) {
		int result = gService.dipsIn(d);
		return result;
	}
	
	// 찜취소
	@ResponseBody
	@RequestMapping(value="dipsOut.gr", produces="application/json; charset=utf-8")
	public int dipsOut(Dips d) {
		int result = gService.dipsOut(d);
		return result;
	}

	// 소모임 참가 신청폼
	@RequestMapping("groupApplyForm.gr")
	public ModelAndView groupApplyForm(int gno, int userNo, ModelAndView mv) {
		
		ArrayList<GroupDto> g = gService.selectGroup(gno);
		
		mv.addObject("list", g);
		
		mv.setViewName("groups/groupApplyForm");
		
		return mv;
	}
	
	// 소모임 참가 신청용
	@RequestMapping("groupApply.gr")
	public String groupApply(HttpSession session, GroupManage gm) {
		int result = gService.groupApply(gm);
		//System.out.println(gm);
		if(result > 0) {	// 성공 --> 마이페이지 소모임 리스트로 이동
			return "groups/groupApplySuccess";
		} else {
			session.setAttribute("msg", "업로드 실패. 다시 시도하십시오,");
			return "소모임 개설 신청하기 실패";
		}
	}
	
	
	// 마이페이지 상태별 소모임 리스트
	@RequestMapping("mygroupList.gr")
	public String mygroupList(int currentPage, GroupDto gd, Model model, HttpSession session) {
		//System.out.println(gd);
		Member loginUser = (Member)session.getAttribute("loginUser");
		gd.setUserNo(loginUser.getUserNo());
		int groupListCount = gService.selectGroupStatusListCount(gd);
		//System.out.println(groupListCount);
		PageInfo pi = Pagination.getPageInfo(groupListCount, currentPage, 5, 3);
		
		ArrayList<GroupDto> list = gService.selectMyGroupList(pi, gd);
		//System.out.println(list);
		model.addAttribute("status", gd.getStatus());
		model.addAttribute("pi", pi);
		model.addAttribute("list", list);
		
		return "myPage/myPageGroupListView";
	}
	
	// 마이페이지 찜한 소모임 리스트
	@RequestMapping("mygroupDipsList.gr")
	public String mygroupDipsList(int currentPage, Model model, HttpSession session) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		int dipsListCount = gService.selectDipsListCount(loginUser.getUserNo());

		PageInfo pi = Pagination.getPageInfo(dipsListCount, currentPage, 5, 3);
		
		ArrayList<Groups> dipsList = gService.mygroupDipsList(pi, loginUser.getUserNo());

		model.addAttribute("pi", pi);
		model.addAttribute("list", dipsList);
		
		return "myPage/myPageGroupListView";
		
	}
	
	// 소모임 개설신청 폼
	@RequestMapping("groupEnrollForm.gr")
	public String groupEnrollForm(Model model) {
		ArrayList<Space> spaceList = rService.selectSpaceList();
		//System.out.println(spaceList);
		model.addAttribute("spaceList",spaceList);
		return "groups/groupEnrollForm";
	}
	
	// 소모임 개설 신청용
	@RequestMapping("insertGroup.gr")
	public String insertGroup(Groups g, HttpServletRequest request,@RequestParam(name="thumbnailImg", required=false) MultipartFile file) {
		//System.out.println(file.getOriginalFilename());
		
		Member loginUser = (Member)request.getSession().getAttribute("loginUser");
		g.setLeaderNo(loginUser.getUserNo());
		
		if(!file.getOriginalFilename().equals("")) {
			String changeName = saveFile(file, request);
			g.setChangeName(changeName);
		}
		
		int result = gService.insertGroup(g);
		
		if(result > 0) {	// 성공 --> 마이페이지 소모임 리스트로 이동
			return "redirect:mygroupList.gr?currentPage=1&status=Y";
		} else {
			return "소모임 개설 신청하기 실패";
		}
		
		
	}
	
	   
	public String saveFile(MultipartFile file, HttpServletRequest request) {
		
		
		String resources = request.getSession().getServletContext().getRealPath("resources");
		String savePath = resources + "\\uploadFiles\\groups\\";
		
		//원본명(aaa.jpg : 원본의 확장자를 추출해야한다.)
		String originName = file.getOriginalFilename();
		
		//수정명(20200522202011.jpg)
		//년월일시분초(String currentTime)
		String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
		
		//확장자(String ext)
		String ext = originName.substring(originName.lastIndexOf("."));// .jpg
		
		String changeName = currentTime + ext;
		
		//전달 받은 파일을 transferTo(new File(경로+파일명))메소드로 업로드를 진행한다.
		try {
			file.transferTo(new File(savePath+changeName));
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		
		//DB에 저장하도록 리턴
		return changeName;
	}
	
}