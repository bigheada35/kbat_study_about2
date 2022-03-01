package edu.kosmo.kbat.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import edu.kosmo.kbat.vo.MemberVO;


@Mapper
public interface LoginMapper {

	// 회원정보조회
	public edu.kosmo.kbat.vo.MemberVO getMember(String member_id);

	// 회원가입
	public int insertMember(MemberVO memberVO);

	
	// 비밀번호 재설정
	public void updatePassword(String member_id, String password);

}
