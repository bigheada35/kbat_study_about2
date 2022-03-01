package edu.kosmo.kbat.service;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;

import edu.kosmo.kbat.vo.MemberVO;


public interface SecurityService extends UserDetailsService {

	// 유저네임으로 멤버조회
	UserDetails loadUserByUsername(String member_id);

	// 멤버조회
	MemberVO getMember(String member_id);

	// 회원가입
	int insertMember(MemberVO memberVO);

	
	// 비밀번호 재설정
	void updatePassword(String member_id, String password);

}
