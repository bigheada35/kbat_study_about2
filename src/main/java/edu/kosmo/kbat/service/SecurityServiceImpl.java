package edu.kosmo.kbat.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import edu.kosmo.kbat.security.MyAuthentication;
import edu.kosmo.kbat.vo.MemberVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class SecurityServiceImpl implements SecurityService {

	@Autowired
	private edu.kosmo.kbat.mapper.LoginMapper loginMapper;

	@Autowired
	private PasswordEncoder passwordEncoder;

	// 멤버 가져오기
	@Override
	public UserDetails loadUserByUsername(String member_id) throws UsernameNotFoundException {
		log.info("loadUserByUsername()");
		MemberVO member = loginMapper.getMember(member_id);
		List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
		MyAuthentication myInfo = null;
		if (member != null) {
			authorities.add(new SimpleGrantedAuthority(member.getAuthVO().getAuthority_name()));
			myInfo = new MyAuthentication(member_id, member.getPassword(), authorities, member);
		}

		return myInfo;
	}

	// 회원가입
	@Override
	public int insertMember(MemberVO memberVO) {
		log.info("insertMember()");
		// 패스워드 암호화
		String password = memberVO.getPassword();
		String encodedPassword = passwordEncoder.encode(password);
		memberVO.setPassword(encodedPassword);

		return loginMapper.insertMember(memberVO);
	}



	// 멤버조회
	@Override
	public MemberVO getMember(String member_id) {
		log.info("getMember()");
		return loginMapper.getMember(member_id);
	}


	//비밀번호 수정
	@Override
	public void updatePassword(String member_id, String password) {
		log.info("updatePassword");
		String encodedPassword = passwordEncoder.encode(password);
		password = encodedPassword;
		loginMapper.updatePassword(member_id, password);

	}

}
