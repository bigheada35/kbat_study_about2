package edu.kosmo.kbat.security;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import edu.kosmo.kbat.mapper.MemberMapper;
import edu.kosmo.kbat.vo.MemberCustom;
import edu.kosmo.kbat.vo.MemberVO;
import lombok.Setter;
import lombok.extern.slf4j.Slf4j;


/*
 * username을 가지고 사용자 정보를 조회하고 session에 저장될 사용자 주체 정보인 
 * UserDetails를 반환하는 Interface다.
 */

@Slf4j
@Service
public class UserCustomDetailsService implements UserDetailsService  {
    
   @Setter(onMethod_ = @Autowired)
   private MemberMapper memberMapper;

   @Override
   public UserDetails loadUserByUsername(String member_number) throws UsernameNotFoundException {
      
      log.warn("==========Load User By UserVO number: " + member_number);
      MemberVO vo = memberMapper.getMember(member_number);

      log.warn("queried by MemberVO mapper: " + vo);

      return vo == null ? null : new MemberCustom(vo);
   }
}