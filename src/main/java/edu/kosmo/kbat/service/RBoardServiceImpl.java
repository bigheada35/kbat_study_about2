package edu.kosmo.kbat.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.kosmo.kbat.mapper.MyPageMapper;
import edu.kosmo.kbat.mapper.QBoardAndMemberMapper;
import edu.kosmo.kbat.mapper.RBoardAndMemberMapper;
import edu.kosmo.kbat.mapper.ReviewMapper;
import edu.kosmo.kbat.page.Criteria;
import edu.kosmo.kbat.vo.BoardtypeVO;
import edu.kosmo.kbat.vo.MemberVO;
import edu.kosmo.kbat.vo.ProductVO;
import edu.kosmo.kbat.vo.QBoardAndMemberVO;
import edu.kosmo.kbat.vo.RBoardAndMemberVO;
import edu.kosmo.kbat.vo.ReviewVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class RBoardServiceImpl implements RBoardService{
		
	@Autowired
	private RBoardAndMemberMapper boardAndMemberMapper;//ssj
	
	@Autowired
	private ReviewMapper reviewMapper;
	
	@Autowired
	private MyPageMapper myPageMapper;
	
	
	@Override
	public List<RBoardAndMemberVO> rgetList() {
		log.info("getList()..");
		return boardAndMemberMapper.rgetList();
	}


	@Override
	public void rwrite(RBoardAndMemberVO board, ReviewVO reviewVO) {
		log.info("write()..");
		
		//String attachment_name = board.getAttachment_name();
		//int order_detail_id1 = reviewVO.getOrder_detail_id();
		//int order_detail_id2 = board.getOrder_detail_id();
		
		//System.out.println("@@@@@@@@@@@@@@@@@@@@@" + attachment_name);
		
		boardAndMemberMapper.rgetList();
		
		myPageMapper.getOrderMyList(board.getMember_id());
		
		//boardAndMemberMapper.rread_order_detail(order_detail_id1);
		//System.out.println("=============order_detail_id1 : " + order_detail_id1);
		//reviewVO.getOrder_detail_id();
		//System.out.println("=============order_detail_id2 : " + order_detail_id1);
		//board.getOrder_detail_id();
		//System.out.println("=============order_detail_id3 : " + order_detail_id2);
		boardAndMemberMapper.rwrite(board);
		boardAndMemberMapper.rwrite_review(board);
		boardAndMemberMapper.rwrite_rating(board);
				
		System.out.println("$$$$$$$$$$$$$$$$$$$$$$$" + board.getAttachment_name());
		
		//boardAndMemberMapper.rwrite_img(attachment_name);

		//System.out.println("=====================" + attachment_name);
	}

	@Override
	public void rmodify(RBoardAndMemberVO board) {
		log.info("modify()service...");	
		boardAndMemberMapper.rmodify(board);	
	}

	@Override
	public void rhit(int board_id) {
		log.info("hit()...");	
		boardAndMemberMapper.rhit(board_id);	
	}

	@Override
	public void rdelete(int board_id) {
		log.info("delete()...");

		System.out.println("=======================" + board_id);
		boardAndMemberMapper.rdelete_attachment(board_id);
		boardAndMemberMapper.rdelete_review(board_id);
		boardAndMemberMapper.rdelete(board_id);
		
	}


	@Override
	public int rgetTotalCount() {
		log.info("getTotal() ..");
		return boardAndMemberMapper.rgetTotalCount();
	}

	@Override
	public List<RBoardAndMemberVO> rgetList(Criteria criteria) {
		log.info("getList() ..");
		System.out.println("~~~~~~~~~~~~~~~" + boardAndMemberMapper.rgetList());
		return boardAndMemberMapper.rgetListWithPaging(criteria);
	}
	
	@Override
	public List<RBoardAndMemberVO> rgetListWithPaging(int proudct_id) {
		log.info("getList()2 ..");
		System.out.println("~~~~~~~~~~~~~~~" + boardAndMemberMapper.rgetList());
		return boardAndMemberMapper.rgetListWithPaging(proudct_id);
	}


	@Override
	public List<BoardtypeVO> qgetboardtypeList() {
		return boardAndMemberMapper.rgetboardtypeList();
	}

	@Override
	public RBoardAndMemberVO rread(int board_id) {
		log.info("read()..");
		rhit(board_id);
		return boardAndMemberMapper.rread(board_id);
	}


	
	
}
