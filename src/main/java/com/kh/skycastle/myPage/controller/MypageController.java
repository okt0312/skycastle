package com.kh.skycastle.myPage.controller;


import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.skycastle.common.model.vo.PageInfo;
import com.kh.skycastle.common.template.Pagination;
import com.kh.skycastle.coupon.model.vo.Coupon;
import com.kh.skycastle.cs.model.vo.Qna;
import com.kh.skycastle.member.model.vo.Member;
import com.kh.skycastle.myPage.model.service.MypageService;
import com.kh.skycastle.reservation.model.vo.Seat;
import com.kh.skycastle.reservation.model.vo.Space;


@Controller
public class MypageController {
	
	@Autowired
	private MypageService pService; 
	
	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;
	
	
	
	
	@RequestMapping("list.bo")
	public String selectList(int currentPage, Model model, HttpSession session) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		int userNo = loginUser.getUserNo();
		int listCount = pService.selectListCount(userNo);
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 10, 5);
		ArrayList<Coupon> list = pService.selectList(pi,userNo);
		
		//System.out.println(list);
		
		model.addAttribute("pi", pi);
		model.addAttribute("list", list);
		
		return "myPage/myPageCoupon";
	}
	
	@RequestMapping("qlist.bo")
	public String qselectList(int currentPage, Member m, Model model, HttpSession session) {
		int listOneCount = pService.qselectListCount(m);
		
		PageInfo pi = Pagination.getPageInfo(listOneCount, currentPage, 10, 5);
		
		ArrayList<Qna> list =  pService.qselectList(pi, m);
		model.addAttribute("pi", pi);
		model.addAttribute("list", list);
		
		
		
		return "myPage/myPageOneOnOneList";
		
		
		
		
	}
	
	
	@RequestMapping("PwdCheckk.my")
	public String PwdCheck() {
		
		
		return "myPage/myPageUpdatePwd";
	}
	
	
	@RequestMapping("PwdCheckkk.my")
	public String updateCheckPwd(Member m, HttpSession session, Model model) {
		
		// System.out.println(m.getUserPwd());
		
		// MypageService pService = new MypageServiceImpl();
		
	     // m에 사용자가 입력한 비밀번호 들어있다.
		 Member memberPwd  =  pService.updateCheckPwd(m); // 멤버 조회만 결과
		 if(memberPwd != null && bCryptPasswordEncoder.matches(m.getUserPwd(), memberPwd.getUserPwd())) { // 비밀번호 일치!!
			 
			 return "myPage/myPageUpdateForm";
			 
		 } else {  // 비밀번호 불일치!!
			 
			 
		
			 model.addAttribute("msg", "비밀번호가 일치하지 않습니다.");
			 return "myPage/myPageUpdatePwd";
		 }
		 
	    
	     
	}
	
	@RequestMapping("updatee.me") 
	public String updateMember(Member m, Model model, HttpSession session) {
		
		int result = pService.updateMember(m);
		
		if(result > 0) { // 회원정보수정 성공 --> 알럴트
			
			session.setAttribute("loginUser", pService.updateCheckPwd(m));
			session.setAttribute("msg", "회원정보 수정 성공!!");
			
			
			return "myPage/myPageUpdatePwd";
			
		} else { // 회원정보 수정 실패 --> 알럴트
			
			model.addAttribute("msg, 회원 정보수정 실패!!");
			return "myPage/myPageUpdatePwd";
			
			
			}
		
	}
	
	
	@RequestMapping("Pwd.me")
	public String Pwd() {
		return "myPage/myPageInfoUpdatePwd";
	}
	
	
	@RequestMapping("upPwd.me")
	public String updatePwd(Member m, Model model, HttpSession session) {
		
		// 현재비밀번호
		// 새로운 비밀번호 (newPwd) 어디로??
		
		int result = pService.updatePwd(m);
			
		
		if(result > 0) {
			session.setAttribute("loginUser", pService.updateCheckPwd(m));
			
			return "myPage/myPageInfoUpdateCheck";
		} else {
			return "myPage/myPageInfoUpdateCheck";
		}
		
	}
	
	
	@RequestMapping("Dropp.me")
	public String Drop() {
		return "myPage/myPageInfoDropOutForm";
	}
	
	
	
	@RequestMapping("delete.me")
	public String deleteMember(Member m, Model model) {
		int result = pService.deleteMember(m);
		
	
		
		if(result > 0) {
			
			return "redirect:logout.me";
			
		} else {
			 
			model.addAttribute("msg","회원탈퇴실패!!");
			return "myPage/myPageInfoDropOutForm";
		}
	}
	

	
	
	
	@RequestMapping("seat.my")
	public String seatselectList(int currentPage, Model model, HttpSession session) {
			
		Member m = (Member)session.getAttribute("loginUser");
		int slistCount = pService.seatselectListCount(m);
		
		

		PageInfo pi = Pagination.getPageInfo(slistCount, currentPage, 10, 5);
		
		ArrayList<Seat> slist = pService.seatselectList(pi, m);
		
		model.addAttribute("pi", pi);
		model.addAttribute("slist", slist);
		
		return "myPage/myPageSeatReservation";
	}
	
//	@RequestMapping("myPageDetail.my")
//	public String SpaceDetail() {
//		return "myPage/myPageSpaceReservationDetail";
//	}
	
	@RequestMapping("qdetail.bo")
	// 조회하고자하는 글 번호 담김 qno
	public ModelAndView selectQna(int qno, ModelAndView mv) {
		
		// 조회수 
		
		// 조회수 없음 
//		int result = pService.increaseCount(qno);
		
		Qna q = pService.selectQna(qno);
		
		if(q != null) {
			
			mv.addObject("q", q);
			mv.setViewName("myPage/myPageOneOnOneDetail");
			
			
		} else {
			
			
		}
		
		return mv;
	}
	
	@RequestMapping("qdelete.bo")
	public String deleteQna(int qno, HttpServletRequest request, Model model, String userNo) {
		
		int result = pService.deleteQna(qno);
		
			
		if(result > 0) { 
			
			return "redirect:qlist.bo?currentPage=1&userNo=" + userNo;
			
		} else { // 게시글 삭제 실패!
			
			return "myPage/myPageOneOnOneList";
			
		}
		
	}
	
	
	
	
//	// 전달받은 파일명을 가지고 서버로 부터 삭제하는 메소드
//	public void deleteFile(String fileName, HttpServletRequest request) {
//		String resources = request.getSession().getServletContext().getRealPath("resources");
//		String savePath = resources + "\\uploadFiles\\";
//		
//		File deleteFile = new File(savePath + fileName);
//		deleteFile.delete();
//		
//	}
	
	
//	// 공유해서 쓸수 있게끔 따로 정의 해놓은 메소드
//	// 전달받은 파일을 서버에 업로드 시킨 후 수정명 리턴하는 메소드
//		public String saveFile(MultipartFile file, HttpServletRequest request) {
//			
//			// 파일을 업로드 시킬 폴더 경로 (String savePath)
//			String resources = request.getSession().getServletContext().getRealPath("resources");
//			String savePath = resources + "\\uploadFiles\\";
//			
//			// 원본명 (aaa.jpg)
//			String originName = file.getOriginalFilename();
//			
//			// 수정명 (20200522202011.jpg)
//			// 년월일시분초 (String currentTime)
//			String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date()); // "20200522202011"
//			
//			// 확장자 (String ext)
//			String ext = originName.substring(originName.lastIndexOf(".")); // ".jpg"
//			
//			String changeName = currentTime + ext;
//			
//					
//			try {
//				file.transferTo(new File(savePath + changeName));
//			} catch (IllegalStateException | IOException e) {
//				e.printStackTrace();
//			}
//			
//			return changeName;
//			
//		}
	
	
	@RequestMapping("qupdateForm.bo")
	public String qupdateForm(int qno, Model model) {
		
		model.addAttribute("q", pService.selectQna(qno));
		
		return "myPage/myPageInfoOneOneOneUpdateDetail";
		
	}
	
	
	@RequestMapping("qqupdate.bo")
	public String updateQna(Qna q) {
		
		// 경로 알아올 때 필요한 것 HttpSetvletRequest request
		// q = 게시글 번호, 게시글 제목, 게시글 내용
		
		int result = pService.updateQna(q);
		
		if(result > 0) {
			
			return "redirect:qdetail.bo?qno=" + q.getQnaNo();
			
		} else {
			return "myPage/myPageInfoOneOneOneUpdateDetail";
		}
	}
	
	
	@RequestMapping("rlist.bo")
	public String spaceselectList(int currentPage, Model model, HttpSession session) {
		
		Member m = (Member)session.getAttribute("loginUser");
		
		int rlistCount = pService.spaceselectListCount(m);
		
		PageInfo pi = Pagination.getPageInfo(rlistCount, currentPage, 10, 5);
		
		
		
		ArrayList<Space> rlist = pService.spaceselectList(pi,m);
		//System.out.println(rlist);
		
		model.addAttribute("pi", pi);
		model.addAttribute("rlist", rlist);
		
		
		return "myPage/myPageSpaceReservation";
	}
	
	@RequestMapping("cpwd.me")
	public String cpwd() {
		
		
		return  "myPage/myPagechangePwd";
	}
	
	@RequestMapping("mchangePwd.me")
	public String echangePwd(HttpServletRequest request, HttpSession session, String pwdChagne, String pwId, Model model) {
		
		Member m = (Member)session.getAttribute("loginUser");
		
		
		String encPwd = bCryptPasswordEncoder.encode(pwId);
		m.setPwId(encPwd);
		int result = pService.mchangePwd(m);
		
		
		
		if(result > 0) {
			session.setAttribute("msg", "비밀번호를 성공적으로 변경 하였습니다.");
			return "myPage/myPageUpdateForm";
		}else {
			session.setAttribute("msg", "비밀번호 변경에 실패 하였습니다. 다시 시도하십시오.");
			return  "myPage/myPagechangePwd";
		}
		
	}
	
	@RequestMapping("xorud.me")
	public String xorud() {
		return "myPage/myPageUpdateForm";
	}
	
}
