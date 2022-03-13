package edu.kosmo.kbat.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.kosmo.kbat.mapper.AttachmentMapper;
import edu.kosmo.kbat.vo.AttachmentVO;

@Service
public class AttachmentServiceImpl implements AttachmentService {
	
	@Autowired
	private AttachmentMapper boardMapper;

	@Override
	public void save(AttachmentVO attach) {
		boardMapper.save(attach);
		
	}


	

}
