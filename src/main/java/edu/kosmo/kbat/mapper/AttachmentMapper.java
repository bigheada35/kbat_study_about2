package edu.kosmo.kbat.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import edu.kosmo.kbat.page.Criteria;
import edu.kosmo.kbat.vo.AttachmentVO;
import edu.kosmo.kbat.vo.BoardtypeVO;
import edu.kosmo.kbat.vo.MemberVO;


@Mapper
public interface AttachmentMapper {

	void save(AttachmentVO attach);

}
