package edu.kosmo.kbat.principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.oauth2.client.userinfo.DefaultOAuth2UserService;
import org.springframework.security.oauth2.client.userinfo.OAuth2UserRequest;
import org.springframework.security.oauth2.core.OAuth2AuthenticationException;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Service;

import edu.kosmo.kbat.mapper.UserMapper;
import edu.kosmo.kbat.vo.UserVO;
import lombok.Setter;

@Service
public class PrincipalOauth2UserService extends DefaultOAuth2UserService{

	//@Autowired
	//private UserRepository userReposiroty;
	
	@Autowired
	private @Lazy BCryptPasswordEncoder bCryptPasswordEncoder;
	
	@Setter(onMethod_ = @Autowired)
	private UserMapper userMapper;	
	
	@Override
	public OAuth2User loadUser(OAuth2UserRequest userRequest) throws OAuth2AuthenticationException {
		System.out.println("getClientRegistration : " + userRequest.getClientRegistration());
		System.out.println("getAccessToken : " + userRequest.getAccessToken().getTokenValue());
		System.out.println("getAuthorities : " + super.loadUser(userRequest).getAttributes());
		
		OAuth2User oAuth2User = super.loadUser(userRequest);
		
		/*
		String provider = userRequest.getClientRegistration().getClientId(); //google
		String providerId = oAuth2User.getAttribute("sub");
		String username = provider + "_" + providerId;
		String password = bCryptPasswordEncoder.encode("겟인데어");
		String email = oAuth2User.getAttribute("email");
		String role = "ROLE_USER";
		*/
	
		UserVO user = null;
		UserVO user2 = null;
		
		String authority_name = "ROLE_USER";
		String provider = userRequest.getClientRegistration().getClientId(); //google
		String providerId = oAuth2User.getAttribute("sub");
		String member_id = oAuth2User.getAttribute("email");
		String password = bCryptPasswordEncoder.encode("1");
		String member_email = oAuth2User.getAttribute("email");
		String member_name = oAuth2User.getAttribute("name");
		
		user = userMapper.getUser(member_id);		
		if(user == null) {
			user = UserVO.builder()
					.password(password)					
					.member_email(member_email)
					.authority_name(authority_name)
					.provider(provider)
					.providerId(providerId)
					.member_id(member_id)
					.member_name(member_name)
					.member_address("입력해주세요")
					.member_phone("입력해주세요")
					.member_company("입력해주세요")
					.build();
			userMapper.insertUser(user);
			userMapper.insertAuthorities(user);
			user = userMapper.getUser(member_id);
		}
				 				
		return new PrincipalDetails(user, oAuth2User.getAttributes());
	}
	
}
