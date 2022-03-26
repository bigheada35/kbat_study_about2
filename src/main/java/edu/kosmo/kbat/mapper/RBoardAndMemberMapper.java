package edu.kosmo.kbat.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import edu.kosmo.kbat.page.Criteria;
import edu.kosmo.kbat.vo.BoardtypeVO;
import edu.kosmo.kbat.vo.MemberVO;
import edu.kosmo.kbat.vo.NBoardAndMemberVO;
import edu.kosmo.kbat.vo.QBoardAndMemberVO;
import edu.kosmo.kbat.vo.RBoardAndMemberVO;


@Mapper
public interface RBoardAndMemberMapper {


	List<RBoardAndMemberVO> rgetList();
	RBoardAndMemberVO rread(int board_id); 
	void rwrite(RBoardAndMemberVO board);
	void rmodify(RBoardAndMemberVO board);
	void rhit(int board_id);
	void rdelete(int board_id);
	
	@Delete("delete from attachment where board_id = #{board_id}")
	void rdelete_attachment(int board_id);

	@Delete("delete from review where board_id = #{board_id}")
	void rdelete_review(int board_id);


	//페이징
	int rgetTotalCount();
	List<RBoardAndMemberVO> rgetListWithPaging(Criteria criteria);
	List<RBoardAndMemberVO> rgetListWithPaging(int proudct_id);
	
	List<BoardtypeVO> rgetboardtypeList();
	
	//후기
	void rwrite_review(RBoardAndMemberVO board);
	void rwrite_rating(RBoardAndMemberVO board);
	
	@Select("select * from review r, product p, order_detail o where r.order_detail_id = o.order_detail_id and p.product_id = o.product_id and p.product_id = #{product_id}")
	RBoardAndMemberVO rread_order_detail(int order_detail_id);
	
	//사진첨부
	//void rwrite_img(String attachment_name);
	
	//@Insert("insert into ")
	//void rwrite_product_id(int prouduct_id);
	
	
}
