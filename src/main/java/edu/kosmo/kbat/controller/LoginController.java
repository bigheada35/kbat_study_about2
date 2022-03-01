package edu.kosmo.kbat.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;

import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import edu.kosmo.kbat.service.SecurityService;
import edu.kosmo.kbat.vo.MemberVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController
@RequestMapping("/login")
public class LoginController {

	@Autowired
	private SecurityService securityService;

	// 회원가입 페이지 이동
	@GetMapping("/register")
	public ModelAndView join(ModelAndView mav) {
		log.info("login/register");

		mav.setViewName("/login/register");

		return mav;
	}

	// 로그인 페이지 이동
	@RequestMapping("/login")
	public ModelAndView login(@RequestParam(value = "msg", required = false) String msg, ModelAndView mav) {
		log.info("login/login");

		mav.addObject("msg", msg);
		mav.setViewName("/login/login");

		return mav;

	}

	// 아이디 중복체크 실행(ajax)
	@PostMapping("/register/idCheck")
	public String idCheck(@RequestParam String inputId) throws Exception {
		log.info("/register/idCheck");

		MemberVO memberVO = securityService.getMember(inputId);
		String canUse = memberVO != null ? "" : "Y";

		return canUse;
	}

	// 회원가입 작성 후 INSERT
	@PostMapping("/register/insert")
	public ModelAndView setInsertMember(MultipartHttpServletRequest multi, MemberVO member, ModelAndView mav,
			String socialCheck) throws Exception {
		log.info("/login/register/insert");

		if (securityService.insertMember(member) > 0) {
			if (socialCheck == null)

				mav.setViewName("/login/registerSuccess");
			return mav;
		} else {
			mav.setViewName("/login/register");
			return mav;
		}
	}

	// 소셜 유저 회원가입 (이미 회원가입시 홈으로)
	@RequestMapping("/oauth2/register")
	public ModelAndView oauht2(ModelAndView mav, Authentication authentication) throws Exception {
		log.info("/login/oauth2/register");
		String id = authentication.getPrincipal().toString();
		MemberVO memberVO = securityService.getMember(id);

		if (memberVO == null) {

			mav.setViewName("/login/oauth2Register");
		} else {
			mav.setViewName("redirect:/store/home");
		}
		return mav;

	}

	@PostMapping("/passwordChange/change")
	public ModelAndView passwordChangeChange(String member_id, String password, ModelAndView mav) throws Exception {
		log.info("/login/passwordChangeChange");
		securityService.updatePassword(member_id, password);
		mav.setViewName("/login/login");
		return mav;
	}

}
