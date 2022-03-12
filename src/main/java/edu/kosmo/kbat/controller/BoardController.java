package edu.kosmo.kbat.controller;

import java.util.HashMap;
import java.util.Map;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import edu.kosmo.kbat.mapper.QBoardAndMemberMapper;
import edu.kosmo.kbat.page.Criteria;
import edu.kosmo.kbat.page.PageVO;
import edu.kosmo.kbat.service.NBoardService;
import edu.kosmo.kbat.service.QBoardService;
import edu.kosmo.kbat.service.RBoardService;
import edu.kosmo.kbat.vo.NBoardAndMemberVO;
import edu.kosmo.kbat.vo.NBoardVO;
import edu.kosmo.kbat.vo.QBoardAndMemberVO;
import edu.kosmo.kbat.vo.RBoardAndMemberVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping
public class BoardController {
	
	@Autowired
	private NBoardService nboardService;
	
	@Autowired
	private QBoardService qboardService;//ssj
	
	@Autowired
	private RBoardService rboardService;
		
	@GetMapping("/nlist")//ssj3
	public String list(Criteria cri, Model model) {
		log.info("list()..");		
		model.addAttribute("list", nboardService.getList(cri));
		int total = nboardService.getTotal();
		log.info("total" + total);
		model.addAttribute("pageMaker", new PageVO(cri, total));		
		return "nboard/list";
	}
	
	@GetMapping("/ncontent_view")
	public String content_view(NBoardVO boardVO, Model model) {
		log.info("content_view()..");
		int board_id = boardVO.getBoard_id();
		model.addAttribute("content_view", nboardService.read(board_id));
		return "nboard/content_view";
	}
	
	@GetMapping("/nwrite_view")
	public String write_view(Model model) {		
		log.info("write_view()...");
		return "nboard/write_view";
		
	}
	
	@PostMapping("/nwrite")
	public String write(NBoardVO boardVO) {		
		log.info("write()...");	
		nboardService.write(boardVO);
		return "redirect:nlist";		
	}
	
	@PostMapping("/nmodify")
	public String modify(NBoardVO boardVO, Model model) {
		log.info("modify()...");
		nboardService.modify(boardVO);		
		return "redirect:nlist";		
	}	

	@GetMapping("/nmodify_view")
	public String modify_view(NBoardVO boardVO, Model model) {//ssj
		log.info("modify_view()...");
		int board_id = boardVO.getBoard_id();	
		model.addAttribute("modify_view", nboardService.read(board_id));
		return "nboard/modify_view";		
	}	
	
	@GetMapping("/ndelete")
	public String delete(NBoardVO boardVO, Model model) {		
		log.info("delete()...");	
		nboardService.delete(boardVO.getBoard_id());				
		return "redirect:nlist";		
	}
	
	@GetMapping("/qlist")//ssj3
	public String qlist(Criteria cri, Model model, QBoardAndMemberVO boardVO) {
		log.info("qlist()..");				
		model.addAttribute("qlist", qboardService.qgetList(cri));
		int total = qboardService.qgetTotalCount();
		log.info("total : " + total);
		model.addAttribute("pageMaker", new PageVO(cri, total));	
		return "qboard/list";
	}
	
	@GetMapping("/qcontent_view")
	public String qcontent_view(QBoardAndMemberVO boardVO, Model model) {
		log.info("qcontent_view()..");
		int board_id = boardVO.getBoard_id();
		model.addAttribute("qcontent_view", qboardService.qread(board_id));
		
		//model.addAttribute("qreply_view");
		
		return "qboard/content_view";
	}
	
	@GetMapping("/qwrite_view")
	public String qwrite_view(Model model) {		
		log.info("qwrite_view()...");		
		return "qboard/write_view";		
	}
	
	@PostMapping("/qwrite")
	public String qwrite(QBoardAndMemberVO boardVO) {		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String user_id = auth.getName();
        System.out.println("유저 아이디 : " + user_id);
        
        boardVO.setMember_id(user_id);
        
		qboardService.qwrite(boardVO);

		log.info("qwrite0()...");	
		qboardService.qwrite(boardVO);
		log.info("qwrite1()...");	
		qboardService.qrepwrite(boardVO);
		log.info("qrepwrite()...");	
		log.info("reply group==== " + boardVO.getReply_group());
		log.info("reply id==== " + boardVO.getReply_id());
		log.info("reply board_id==== " + boardVO.getBoard_id());
		
		return "redirect:qlist";		
	}
	
	@PostMapping("/qmodify")
	public String qmodify(QBoardAndMemberVO boardVO, Model model) {
		log.info("qmodify()...");
		qboardService.qmodify(boardVO);		
		return "redirect:qlist";		
	}	

	@GetMapping("/qmodify_view")
	public String qmodify_view(QBoardAndMemberVO boardVO, Model model) {//ssj
		log.info("qmodify_view()...");
		int board_id = boardVO.getBoard_id();	
		model.addAttribute("modify_view", qboardService.qread(board_id));
		return "qboard/modify_view";		
	}	
	
	@GetMapping("/qdelete")
	public String qdelete(QBoardAndMemberVO boardVO, Model model) {		
		log.info("delete()...");	
		qboardService.qdelete(boardVO.getBoard_id());				
		return "redirect:qlist";		
	}
	
	@GetMapping("/qreply_view")
	public String qreply_view(QBoardAndMemberVO boardVO, Model model) {		
		log.info("reply_view()...");
		System.out.println("---111--------group : " + boardVO.getReply_group());
		model.addAttribute("qreply_view", boardVO);
		System.out.println("---222--------group : " + boardVO.getReply_group());
		return "qboard/reply_view";		
	}
	
	@PostMapping("/qreply")
	public String qreply(QBoardAndMemberVO boardVO, Model model) {
		System.out.println("----------qreply-----");
		log.info("reply()...");
		System.out.println("---333--------group : " + boardVO.getReply_group());
		//boardVO.setReply_group(boardVO.getReply_group()); 
		qboardService.qregisterReply(boardVO);	
	   
		System.out.println("---444--------group : " + boardVO.getReply_group());
		
				
		return "redirect:qlist";		
	}
	
	@GetMapping("/rlist")//ssj3
	public String rlist(Criteria cri, Model model) {
		log.info("list()..");		
		model.addAttribute("rlist", rboardService.rgetList(cri));
		int total = rboardService.rgetTotalCount();
		log.info("total" + total);
		model.addAttribute("pageMaker", new PageVO(cri, total));		
		return "rboard/list";
	}
	
	@GetMapping("/rcontent_view")
	public String rcontent_view(RBoardAndMemberVO boardVO, Model model) {
		log.info("content_view()..");
		int board_id = boardVO.getBoard_id();
		model.addAttribute("rcontent_view", rboardService.rread(board_id));
		return "rboard/content_view";
	}
	
	@GetMapping("/rwrite_view")
	public String rwrite_view(Model model) {		
		log.info("write_view()...");
		return "rboard/write_view";
		
	}
	
	@PostMapping("/rwrite")
	public String rwrite(RBoardAndMemberVO boardVO) {		
		log.info("write()...");	
		rboardService.rwrite(boardVO);
		return "redirect:rlist";		
	}
	
	@PostMapping("/rmodify")
	public String rmodify(RBoardAndMemberVO boardVO, Model model) {
		log.info("modify()...");
		rboardService.rmodify(boardVO);		
		return "redirect:rlist";		
	}	

	@GetMapping("/rmodify_view")
	public String rmodify_view(QBoardAndMemberVO boardVO, Model model) {//ssj
		log.info("modify_view()...");
		int board_id = boardVO.getBoard_id();	
		model.addAttribute("rmodify_view", rboardService.rread(board_id));
		return "rboard/modify_view";		
	}	
	
	@GetMapping("/rdelete")
	public String rdelete(RBoardAndMemberVO boardVO, Model model) {		
		log.info("delete()...");	
		rboardService.rdelete(boardVO.getBoard_id());				
		return "redirect:rlist";		
	}

}
