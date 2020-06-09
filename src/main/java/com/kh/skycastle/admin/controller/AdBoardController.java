package com.kh.skycastle.admin.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.skycastle.admin.model.service.AdBoardService;
import com.kh.skycastle.cs.model.vo.Event;
import com.kh.skycastle.cs.model.vo.Notice;

//게시판관리(공지사항,이벤트) 페이지 관련 컨트롤러입니다 
@Controller
public class AdBoardController {
	
	@Autowired
	private AdBoardService adBoService;
	
		//메뉴바에서 공지사항관리 페이지 눌렀을때 이동
		@RequestMapping("noticeMgmt.ad")
		public ModelAndView adNoticeMgmtList(ModelAndView mv){
			
			ArrayList<Notice> list = adBoService.selectNotice();
			
			mv.addObject("list", list).setViewName("admin/adNoticeMgmt");
			return mv;
		}
		//공지사항 등록폼
		@RequestMapping("noticeEnrollForm.ad")
		public String adNoEnrollForm() {
			return ("admin/adNoticeEnrollForm");
		}
		
		//공지사항 수정
		@RequestMapping("noticeUpdate.ad")
		public String updateAdNotice(Notice n, Model model, HttpSession session) {
			System.out.println("컨트롤러n"+n);
			System.out.println("컨트롤러 세션"+ session);
			int result = adBoService.updateAdNotice(n);
			
			if(result > 0) { 
				
				
				return "redirect:noticeMgmt.ad";
				
				//return "redirect:noticeDetail.ad?bno="+n.getNoticeNo();
				
			}else { 
				
				return "수정 실패";
			}
			
		}
		
		//공지사항 삭제
		
		@RequestMapping("deleteNotice.ad")
		public String deleteAdNotice(int noticeNo, Model model, HttpSession session) {
			int result = adBoService.deleteAdNotice(noticeNo);
			
			if(result > 0)
			{
				
				return "redirect:noticeMgmt.ad";
			}
			else
			{
				return "삭제 실패";
			}
		}
		
		//공지사항 등록
		@RequestMapping("noticeInsert.ad")
		public String insertAdNotice(Notice n, Model model, HttpSession session) {
			int result = adBoService.insertAdNotice(n);
			
			if(result > 0)
			{
				
				return "redirect:noticeMgmt.ad";
			}
			else
			{
				return "삭제 실패";
			}
		}
		
		
		//공지사항 상세페이지
		@RequestMapping("noticeDetail.ad")
		public ModelAndView selectNoDetail(int bno, ModelAndView mv) {
			
			Notice n = adBoService.selectNoDetail(bno);
			mv.addObject("n", n);
			mv.setViewName("admin/adNoticeDetailView");
			
			return mv;
		}
		
		
		
		
		
		//이벤트 페이지 리스트 조회
		@RequestMapping("eventMgmt.ad")
		public ModelAndView adEventMgmtList(ModelAndView mv){
			
			ArrayList<Event> list = adBoService.selectEvent();
			
			mv.addObject("list", list).setViewName("admin/adEventMgmt");
			return mv;
		}
		
		//이벤트 등록폼
		@RequestMapping("eventEnrollForm.ad")
		public String adEvEnrollForm() {
			return ("admin/adEventEnrollForm");
		}
		
		//이벤트 페이지 상세조회(수정폼)
		@RequestMapping("eventDetail.ad")
		public ModelAndView adSelectEvent(int eno, ModelAndView mv) {
			
			Event e = adBoService.adSelectEvent(eno);
			mv.addObject("e", e);
			mv.setViewName("admin/adEventDetailView");
			
			return mv;
		} 	
		
		// 이벤트 수정 페이지 
		@RequestMapping("updateEvent.ad")
		public String updateEventForm(Event e, HttpServletRequest request,
									  @RequestParam(name="reUploadFile", required=false) MultipartFile file) {
			
			if(!file.getOriginalFilename().equals("")) {
				
				// 첨부파일 o
				if(e.getChangeName() != null) {
					deleteFile(e.getChangeName(), request);
				}
			
			String changeName = saveFile(file, request);
			
			e.setChangeName(changeName);
			}
			
			int result = adBoService.updateEvent(e);
			
			if(result > 0) {
				return "redirect:adEventDetailView.ad?eno=" + e.getEventNo();
			}
		}
			
		// 공유해서 쓸수 있게끔 따로 정의 해놓은 메소드
		// 전달받은 파일을 서버에 업로드 시킨 후 수정명 리턴하는 메소드
		public String saveFile(MultipartFile file, HttpServletRequest request) {
			
			// 파일을 업로드 시킬 폴더 경로 (String savePath)
			String resources = request.getSession().getServletContext().getRealPath("resources");
			String savePath = resources + "\\uploadFiles\\event\\";
			
			String changeName = file.getOriginalFilename();
			
			try {
				file.transferTo(new File(savePath + changeName));
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
	
			return changeName;
			
		}
		// 전달받은 파일명을 가지고 서버로 부터 삭제하는 메소드
		public void deleteFile(String fileName, HttpServletRequest request) {
			String resources = request.getSession().getServletContext().getRealPath("resources");
			String savePath = resources + "\\uploadFiles\\";
			
			File deleteFile = new File(savePath + fileName);
			deleteFile.delete();
		}
		
}
