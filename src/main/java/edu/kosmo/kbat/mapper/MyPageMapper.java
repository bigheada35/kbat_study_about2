package edu.kosmo.kbat.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import edu.kosmo.kbat.joinvo.ProductOrderDetailOrderVO;
import edu.kosmo.kbat.page.Criteria;
import edu.kosmo.kbat.vo.MemberVO;

@Mapper
public interface MyPageMapper {
	// 회원 정보 조회
	MemberVO readMember(String member_id);

	// 회원 정보 수정 (비번포함x)
	public void updateMember(MemberVO memberVO);

	// 회원 탈퇴
	public void deleteMember(String member_id);

	// 회원 탈퇴 설정
	void withdraw(MemberVO memberVO);

	// 주문내역 리스트 가져오기
	public List<ProductOrderDetailOrderVO> getOrderMyList(String member_id);

	public List<ProductOrderDetailOrderVO> getOrderMyListPaging(String member_id, Criteria cri);

	// 페이징 단위에 적용되는 최대 주문내역 단위
	public int getOrderMyTotalCount(Criteria cri);
<<<<<<< HEAD
	
	// QnA 내 글에 관리자가 작성한 댓글 리스트 
	//public List<QBoardAndMemberVO> getMyqReply(int board_id);
	
	// 내가 작성한 상품 리뷰
	public List<ProductOrderDetailOrderVO> reviewMyList(String member_id);
=======

	// QnA 내 글에 관리자가 작성한 댓글 리스트
	// public List<QBoardAndMemberVO> getMyqReply(int board_id);

	// 리뷰 마이페이지 리스트
	public List<ProductOrderDetailBoardVO> reviewMyList(String member_id);
>>>>>>> efc6e90bd5c32093481fe53d03b733fc4629a760

	public List<ProductOrderDetailBoardVO> getMyReviewList(Criteria cri, String member_id);

}
