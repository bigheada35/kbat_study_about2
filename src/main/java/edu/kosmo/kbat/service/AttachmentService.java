package edu.kosmo.kbat.service;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import edu.kosmo.kbat.page.Criteria;
import edu.kosmo.kbat.vo.AttachmentVO;
import edu.kosmo.kbat.vo.BoardtypeVO;
import edu.kosmo.kbat.vo.MemberVO;
import edu.kosmo.kbat.vo.NBoardAndMemberVO;
import edu.kosmo.kbat.vo.QBoardAndMemberVO;

public interface AttachmentService {

	void save(AttachmentVO attach);

}
