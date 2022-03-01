package edu.kosmo.kbat.service;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.kosmo.kbat.mapper.MemberMapper;
import edu.kosmo.kbat.vo.MemberVO;
import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j;
import lombok.extern.slf4j.Slf4j;

//@Slf4j
@NoArgsConstructor
@Service
public class MemberService {

	//에러나서 --> 
	//@Autowired
	// private BCryptPasswordEncoder passEncoder;
	// --> 이렇게 시도해봄,OK.
	BCryptPasswordEncoder passEncoder = new BCryptPasswordEncoder();
	
	@Autowired
   private MemberMapper memberMapper;

   // caution:  must use @Transactional
   //@Transactional(rollbackFor = Exception.class)
   public void addMember(MemberVO memberVO) {
	   
	  //System.out.println("==========addUser:"+userVO.getUsername() +","+userVO.getPassword());
	   System.out.println("==========addUser:" + memberVO.getMember_id() + "," +memberVO.getPassword());
	   
      String password = memberVO.getPassword();
      String encode = passEncoder.encode(password);

      memberVO.setPassword(encode);

      memberMapper.insertUser(memberVO);
      memberMapper.insertAuthorities(memberVO);
   }
   public void addAdmin(MemberVO memberVO) {
	   
	  //System.out.println("==========addUser:"+userVO.getUsername() +","+userVO.getPassword());
	   System.out.println("==========addUser:" + memberVO.getMember_id() + "," + memberVO.getPassword());
	   
      String password = memberVO.getPassword();
      String encode = passEncoder.encode(password);

      memberVO.setPassword(encode);

      memberMapper.insertUser(memberVO);
      memberMapper.insertAuthoritiesAdmin(memberVO);
   }
   
}

