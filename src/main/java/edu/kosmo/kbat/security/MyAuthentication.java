package edu.kosmo.kbat.security;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import edu.kosmo.kbat.vo.MemberVO;
import lombok.Getter;
import lombok.Setter;

//현재 로그인한 사용자 객체 저장 DTO

@Getter
@Setter
public class MyAuthentication extends UsernamePasswordAuthenticationToken implements UserDetails {
	private static final long serialVersionUID = 1L;

	@Autowired
	private MemberVO memberVO;

	List<GrantedAuthority> grantedAuthorityList;

	public MyAuthentication(String id, String password, List<GrantedAuthority> grantedAuthorityList, MemberVO memberVO) {
		super(id, password, grantedAuthorityList);
		this.grantedAuthorityList = grantedAuthorityList;
		this.memberVO = memberVO;
	}

	@Override
	public String getPassword() {

		return memberVO.getPassword();
	}

	@Override
	public MemberVO getPrincipal() {
		// TODO Auto-generated method stub
		return memberVO;
	}

	@Override
	public String getUsername() {
		// TODO Auto-generated method stub
		return memberVO.getUsername();
	}

	@Override
	public boolean isAccountNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isEnabled() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return memberVO.getMember_id();
	}
}
