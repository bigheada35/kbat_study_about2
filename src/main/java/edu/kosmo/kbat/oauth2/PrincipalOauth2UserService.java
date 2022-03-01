package edu.kosmo.kbat.oauth2;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.oauth2.client.userinfo.DefaultOAuth2UserService;
import org.springframework.security.oauth2.client.userinfo.OAuth2UserRequest;
import org.springframework.security.oauth2.core.OAuth2AuthenticationException;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Service;

import edu.kosmo.kbat.mapper.LoginMapper;
import edu.kosmo.kbat.vo.MemberVO;


@Service
public class PrincipalOauth2UserService extends DefaultOAuth2UserService {

	@Autowired
	private LoginMapper loginMapper;

	private MemberVO memberVO;

	// 구글로 부터 받은 userRequest 데이터에 대한 후처리되는 함수
	@Override
	public OAuth2User loadUser(OAuth2UserRequest userRequest) throws OAuth2AuthenticationException {
		System.out.println("getClientRegistration : " + userRequest.getClientRegistration());
		System.out.println("getAccessToken :" + userRequest.getAccessToken().getTokenValue());
		System.out.println("getAttributes : " + super.loadUser(userRequest).getAttributes());

		OAuth2User oauth2User = super.loadUser(userRequest);

		@SuppressWarnings("unchecked")
		Map<String, Object> map = (Map<String, Object>) oauth2User.getAttributes().get("response");

		List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();

		String provider = userRequest.getClientRegistration().getClientName(); // google
		String member_id = null;
		String name = null;
		int loginType = 0;
		if (provider.equals("Google")) {

			member_id = oauth2User.getAttribute("email");
			name = oauth2User.getAttribute("name");
			loginType = 4;

		} else if (provider.equals("Naver")) {
			member_id = (String) map.get("email");
			name = (String) map.get("name");
			loginType = 3;

		}
		memberVO = loginMapper.getMember(member_id);
		if (memberVO == null) {
			System.out.println("소셜 로그인 이 최초입니다.");
			memberVO = new MemberVO();
			memberVO.setMember_name(name);
			memberVO.setMember_id(member_id);
			memberVO.setUsername(member_id);
			memberVO.setPassword("공부어때");
			memberVO.getLogintypeVO().setLogintype_id(loginType);
		} else {
			System.out.println("소셜 아이디가 있습니다.");
			authorities.add(new SimpleGrantedAuthority(memberVO.getAuthVO().getAuthority_name()));
		}
		PrincipalOauth2User principal = new PrincipalOauth2User(memberVO, authorities);
		return principal;
	}
}
