package edu.kosmo.kbat.oauth2;

import java.util.Collection;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.oauth2.core.user.OAuth2User;

import edu.kosmo.kbat.vo.AuthVO;
import edu.kosmo.kbat.vo.LogintypeVO;
import edu.kosmo.kbat.vo.MemberVO;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class PrincipalOauth2User implements OAuth2User {

	@Autowired
	MemberVO memberVO;
	List<GrantedAuthority> grantedAuthorityList;

	@Override
	public Map<String, Object> getAttributes() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return memberVO.getMember_id();
	}

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {

		return grantedAuthorityList;
	}

	public String getMember_id() {
		return memberVO.getMember_id();
	}

	public String getPassword() {
		return memberVO.getPassword();
	}

	public String getName() {
		return memberVO.getMember_name();
	}

	public AuthVO getAuthO() {
		return memberVO.getAuthVO();
	}

	public LogintypeVO getLogintypeVO() {
		return memberVO.getLogintypeVO();
	}

	public String getUsername() {
		return memberVO.getUsername();
	}

}
