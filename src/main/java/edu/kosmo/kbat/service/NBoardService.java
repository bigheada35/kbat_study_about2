package edu.kosmo.kbat.service;

import java.util.List;

import edu.kosmo.kbat.page.Criteria;
import edu.kosmo.kbat.vo.BoardtypeVO;
import edu.kosmo.kbat.vo.MemberVO;
import edu.kosmo.kbat.vo.NBoardAndMemberVO;
import edu.kosmo.kbat.vo.NBoardVO;


public interface NBoardService {
	
	//공지사항 : n, 후기 : r, 문의 : q
	//ssj2
	//List<NBoardVO> getList();
	List<NBoardAndMemberVO> getList();//ssj2
	
	NBoardVO read(int board_id); //esh
	void write(NBoardVO board);
	//void write(NBoardVO board); esh
	void modify(NBoardVO board);
	void hit(int board_id);
	void delete(int board_id);
	
	public int getTotal();
	public List<NBoardAndMemberVO> getList(Criteria criteria);
	
	List<BoardtypeVO> getboardtypeList();
	
	

}
