package edu.kosmo.kbat.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

import edu.kosmo.kbat.vo.MemberVO;



@Mapper
public interface MemberMapper {
   
   public MemberVO getMember(String member_id);   
   
   @Insert("insert into member(member_number, member_id, password, member_name, member_phone, member_email, member_address, member_company) "
   		+ "values(member_seq.nextval, #{member_id}, #{password}, #{member_name}, #{member_phone}, #{member_email}, #{member_address}, #{member_company})")
   public int insertUser(MemberVO memberVO);

   @Insert("insert into authority (authority_name, member_number) values('ROLE_USER', member_seq.currval)")
   public void insertAuthorities(MemberVO memberVO);

   @Insert("insert into authority(authority_name, member_number) values('ROLE_ADMIN', member_seq.currval)")
   public void insertAuthoritiesAdmin(MemberVO memberVO);
   
}
