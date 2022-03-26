package edu.kosmo.kbat.service;

import java.util.List;

import edu.kosmo.kbat.joinvo.ProductOrderDetailOrderVO;
import edu.kosmo.kbat.page.Criteria;
import edu.kosmo.kbat.vo.BoardtypeVO;
import edu.kosmo.kbat.vo.MemberVO;
import edu.kosmo.kbat.vo.RBoardAndMemberVO;
import edu.kosmo.kbat.vo.ReviewVO;


public interface RBoardService {
	
	List<RBoardAndMemberVO> rgetList();
	RBoardAndMemberVO rread(int board_id); 
	//RBoardAndMemberVO rread(int board_id, int review_id); 
	//void rwrite(RBoardAndMemberVO board);
	void rmodify(RBoardAndMemberVO board);
	void rhit(int board_id);
	void rdelete(int board_id);

	//페이징
	int rgetTotalCount();
	public List<RBoardAndMemberVO> rgetList(Criteria criteria);
	List<RBoardAndMemberVO> rgetListWithPaging(int proudct_id);
	
	List<BoardtypeVO> qgetboardtypeList();
	void rwrite(RBoardAndMemberVO board, ReviewVO reviewVO); //reviewvo추가

}
