
package com.kh.skycastle.member.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.github.scribejava.core.model.OAuth2AccessToken;
import com.kh.skycastle.admin.model.service.AdMemberService;
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

	// NaverLoginBO 
	private NaverLoginBO naverLoginBO;
	private String apiResult = null;
	
	@Autowired
	private void setNaverLoginBO(NaverLoginBO naverLoginBO) {
		this.naverLoginBO = naverLoginBO;
	}
	
	@Autowired
	private AdMemberService admService;
	
	/*
	@RequestMapping("loginForm.me")
	public String loginForm() {
		return "member/loginForm";
	}
	*/
	
	@RequestMapping("loginForm.me")
	public String login(Model model, HttpSession session) {
		
		// 네이버 아이디로 인증 url을 생성하기 위하여 naverLoginBO 클래스의 getAuthorizationUrl 메소드 호출
		String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
		
		// 네이버 로그인창 
		model.addAttribute("url", naverAuthUrl);
		
		return "member/loginForm";
	}
	
	@RequestMapping("/callback")
	public String callback(Member m, Model model, @RequestParam String code, @RequestParam String state, HttpSession session, HttpServletRequest request) throws IOException, ParseException {
	
		OAuth2AccessToken oauthToken;
		oauthToken = naverLoginBO.getAccessToken(session, code, state);
		// 로그인 사용자 정보 읽어오기 
		apiResult = naverLoginBO.getUserProfile(oauthToken);
		
		model.addAttribute("result", apiResult);
		session.setAttribute("result", apiResult);
		
		// DB와 세션에 넣기 
		/*
		JSONParser jsonParser = new JSONParser();
		JSONObject jsonObject = (JSONObject)jsonParser.parse(naverLoginBO.getUserProfile(oauthToken).toString());
		
		JSONObject response = (JSONObject)jsonObject.get("response");
		
		System.out.println("이건 " + jsonObject.get("response"));

		m.setUserNo(Integer.parseInt("00"));
		m.setUserId((String)response.get("email"));
        m.setUserPwd("0000"); //DB에서 Not null로 처리했기에 임의로 준 값
        m.setUserName((String) response.get("name"));
        m.setBirthday((String)response.get("birthday"));
        m.setPhone("00000000000");
        m.setGradeCode(Integer.parseInt("5"));
        
        System.out.println("멤바아이디는 " + m.getUserId());
   	
        int result = mService.selectDuplicateMember((String)response.get("email"));
	     if( result == 0){
	     	 System.out.println("중복없음");
	     	 //mService.insertMember(m);
	      }else {
	     	 System.out.println("중복있음");	        	
	      }
	       
		
        //생략 가능_세션에 담기 위해 사용했다.
        request.getSession(true).setAttribute("email", m.getUserId());
 		*/
		return "member/naverSuccess";
	}

	@RequestMapping("login.me")
	public String loginMember(Member m, HttpSession session, Model model) {
		Member loginUser = mService.loginMember(m);

		if(loginUser != null && bcryptPasswordEncoder.matches(m.getUserPwd(), loginUser.getUserPwd())) {
			session.setAttribute("loginUser", loginUser);
			return "redirect:/";
		} else {
			session.setAttribute("loginFail", "로그인에 실패하였습니다. 다시 시도하십시오.");
			return "member/loginForm";
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

		if(!infoAgree) { // 체크박스 동의하지 않을 경우 정보입력 페이지 이동 x
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

		if(count > 0) {
			return "fail";
		} else {
			return "success";
		}
	}

	// 회원가입
	@RequestMapping("insert.me")
	public String insertMember(Member m, Model model, HttpSession session) {

		// 암호화작업
		String encPwd = bcryptPasswordEncoder.encode(m.getUserPwd());
		System.out.println("암호화후 : " + encPwd);

		m.setUserPwd(encPwd);

		int result = mService.insertMember(m);

		if(result > 0) { // 회원가입 성공
			return "member/enrollComplete";
		} else { // 회원가입 실패
			session.setAttribute("enrollFail", "회원가입 실패 하였습니다. 다시 시도해주세요.");
			return "member/enrollForm";
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
	public String changePwd(HttpServletRequest request, HttpSession session,  String userId, String pwdChagne, Member m, Model model) {
		
		String email = request.getParameter("userId");
		String pwdChange = request.getParameter("pwdChange");
		
		String encPwd = bcryptPasswordEncoder.encode(pwdChange);
		m.setUserPwd(encPwd);
		m.setUserId(email);
		
		int result = mService.changePwd(m);
		
		if(result > 0) {
			session.setAttribute("msg", "비밀번호를 성공적으로 변경 하였습니다. 로그인 페이지로 이동합니다.");
			return "member/loginForm";
		}else {
			session.setAttribute("msg", "비밀번호 변경에 실패 하였습니다. 다시 시도하십시오.");
			return "member/searchPwd";
		}
		
	}
}
