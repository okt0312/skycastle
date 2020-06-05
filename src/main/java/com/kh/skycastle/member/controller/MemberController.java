package com.kh.skycastle.member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.skycastle.member.model.service.MemberService;
import com.kh.skycastle.member.model.vo.Member;

@Controller
public class MemberController {

	@Autowired
	private MemberService mService;

	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;

	private TempKey tempkey = new TempKey();

	// SimpleMailMessage를 이용한 메일 발송
	@Autowired
	private JavaMailSender mailSender;

	@RequestMapping("loginForm.me")
	public String loginForm() {
		return "member/loginForm";
	}

	@RequestMapping("login.me")
	public String loginMember(Member m, HttpSession session, Model model) {
		Member loginUser = mService.loginMember(m);

		if (loginUser != null && bcryptPasswordEncoder.matches(m.getUserPwd(), loginUser.getUserPwd())) {
			session.setAttribute("loginUser", loginUser);
			return "redirect:/";
		} else {
			model.addAttribute("msg", "로그인 실패");
			return "common/errorPage";
		}
	}

	@RequestMapping("logout.me")
	public String logoutMember(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}

	@RequestMapping("enrollForm.me")
	public String enrollForm() {
		return "member/enrollForm";
	}

	@RequestMapping("enrollForm2.me")
	public ModelAndView enrollForm2(@RequestParam(value = "infoAgree", defaultValue = "false") Boolean infoAgree) {

		if (!infoAgree) { // 체크박스 동의하지 않을 경우 정보입력 페이지 이동 xxx
			ModelAndView mv = new ModelAndView("member/enrollForm");
			return mv;
		}
		ModelAndView mv = new ModelAndView("member/enrollForm2");
		return mv;
	}

	// 아이디 중복체크
	@ResponseBody
	@RequestMapping(value = "idCheck.me")
	public String idCheck(String userId) {

		int count = mService.idCheck(userId);

		if (count > 0) {
			return "fail";
		} else {
			return "success";
		}
	}

	// 회원가입
	@RequestMapping("insert.me")
	public String insertMember(Member m, Model model) {

		// 암호화작업
		String encPwd = bcryptPasswordEncoder.encode(m.getUserPwd());
		System.out.println("암호화후 : " + encPwd);

		m.setUserPwd(encPwd);

		int result = mService.insertMember(m);

		if(result > 0) { // 회원가입 성공

			return "member/enrollComplete";

		} else { // 회원가입 실패

			model.addAttribute("msg", "회원가입 실패!!");
			return "common/errorPage";
		}
	}
	
	// 회원가입 이메일인증 
	@ResponseBody
	@RequestMapping(value = "sendCode.me")
	public String emailConfirm(HttpServletRequest request, ModelAndView mv) {

		String userId = request.getParameter("userId");
		String authCode = "";

		authCode = tempkey.init();

		// 가입 승인에 사용될 인증키
		sendEmail(userId, authCode);

		// 이메일 전송
		String str = authCode;
		return str;

	}

	// 회원가입 이메일 발송 메소드
	public void sendEmail(String userId, String authCode) {
		
		SimpleMailMessage mailMessage = new SimpleMailMessage();
		mailMessage.setSubject("SKYCASTLE 회원가입 인증 코드");
		mailMessage.setFrom("skycastle0504@gmail.com");
		mailMessage.setText("회원가입을 환영합니다. 인증번호를 확인해주세요. [ " + authCode + " ]");
		mailMessage.setTo(userId);
		try {
			mailSender.send(mailMessage);
		} catch (Exception e) {
			System.out.println(e);
		}
	}
	
	// 비밀번호 찾기 폼
	@RequestMapping("searchPwd.me")
	public String seachPwdForm() {
		return "member/searchPwd";
	}
	
	// 비밀번호 찾기 인증 번호 
	@RequestMapping("sendPwdMail.me")
	public ModelAndView searchPwd(HttpSession session, HttpServletRequest request, String userId, String phone, Member m, ModelAndView mv) {
		
		String id = request.getParameter("userId");
		String ph = request.getParameter("phone");
		
		System.out.println("테스트" + id + ph );
		
		m.setUserId(id);
		m.setPhone(ph);
		
		Member user = mService.searchPwd(m);
		
		String authCode = "";
		authCode = tempkey.init();
		
		System.out.println(m);
		
		if(user != null) {
			session.setAttribute("user", user);
			
			// 인증번호 발송 메일 
			SimpleMailMessage mailMessage = new SimpleMailMessage();
			mailMessage.setSubject("SKYCASTLE 인증 코드");
			mailMessage.setFrom("skycastle0504@gmail.com");
			mailMessage.setText("인증번호를 확인해주세요. [ " + authCode + " ]");
			//mailMessage.setTo(userId);
			mailMessage.setTo(m.getUserId());
			try {
				mailSender.send(mailMessage);
			} catch (Exception e) {
				System.out.println(e);
			}

			mv.setViewName("member/searchPwdAuthCode");
			mv.addObject("authCode", authCode);
			mv.addObject("userId", m.getUserId());
			return mv;
			
		}else {
			mv.setViewName("member/searchPwd");
			mv.addObject("msg", "정보가 일치하지 않습니다.");		
			return mv;
		}

	}

	// 인증 결과 
	@RequestMapping("pwdChange.me")
	public ModelAndView changePwd(HttpServletRequest request, String passCode, String authCode, String userId, Member m ,ModelAndView mv) {

		String email = request.getParameter("userId");
		String code = request.getParameter("passCode");
		
		System.out.println(authCode);
		System.out.println(code);
		
		// 인증번호가 일치할 경우 비밀번호 변경창 이동
		if(code.equals(authCode)) {
			mv.setViewName("member/changePwd");
			mv.addObject("userId", userId);
			return mv;
		} else {
			mv.setViewName("member/searchPwdAuthCode");
			return mv;
		}
	}
	
	// 비밀번호 변경
	@RequestMapping("changePwd.me")
	public String changePwd(HttpServletRequest request, String userId, String pwdChagne, Member m, Model model) {
		
		String email = request.getParameter("userId");
		String pwdChange = request.getParameter("pwdChange");
		
		System.out.println(email + pwdChange);
		
		String encPwd = bcryptPasswordEncoder.encode(pwdChange);
		m.setUserPwd(encPwd);
		m.setUserId(email);
		
		System.out.println(m);
		int result = mService.changePwd(m);
		
		if(result > 0) {
			return "member/loginForm";
		}else {
			model.addAttribute("msg", "에러 발생");
			return "common/errorPage";
		}
		
	}
}
