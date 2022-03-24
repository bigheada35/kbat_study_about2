package edu.kosmo.kbat.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import edu.kosmo.kbat.joinvo.ProductProductViewVO;
import edu.kosmo.kbat.page.Criteria;
import edu.kosmo.kbat.page.PageVO;
import edu.kosmo.kbat.principal.PrincipalDetails;
import edu.kosmo.kbat.service.MainService;
import edu.kosmo.kbat.service.MyPageService;
import edu.kosmo.kbat.service.ProductService;
<<<<<<< HEAD
import edu.kosmo.kbat.vo.MemberVO;
import edu.kosmo.kbat.vo.ProductVO;
=======
import edu.kosmo.kbat.service.QBoardService;
import edu.kosmo.kbat.service.RBoardService;
import edu.kosmo.kbat.service.UserService;
import edu.kosmo.kbat.vo.ProductVO;
import edu.kosmo.kbat.vo.QBoardAndMemberVO;
import edu.kosmo.kbat.vo.RBoardAndMemberVO;
import edu.kosmo.kbat.vo.ReviewVO;
import edu.kosmo.kbat.vo.UserVO;
>>>>>>> origin/dev_ush
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@AllArgsConstructor
@Controller
public class MainController {
	
	final int NameLimit = 15;
	final int DescLimit = 25;
	
<<<<<<< HEAD

	@Autowired
	private	MyPageService myPageService;
	
=======
>>>>>>> origin/dev_ush
	@Autowired
	private	ProductService productService;

	//KDM 검색
	@Autowired
	private MainService mainService;
	
	@Autowired
	private RBoardService rboardService;
	
	@Autowired
	private QBoardService qboardService;
	
	@GetMapping("/pay/import")
	public void import2() {
		System.out.println("----import----");
		//return "/pay/import"
	}
	@GetMapping("/main/main")
	public void main(Model model) {
		System.out.println("----main----");
		List <ProductVO> productVO = productService.getList();
		
		for (ProductVO productVO2 : productVO) {
			String strName = productVO2.getProduct_name();
			String strDesc = productVO2.getProduct_description();
			if(strDesc != null) {
				if(strDesc.length() > DescLimit) {
					//System.out.print("--"+ strDesc.substring(0, 25));
					//System.out.println("--length:"+ strDesc.length());
					productVO2.setProduct_description(strDesc.substring(0, DescLimit));
				}
			}
			if(strName != null) {
				if(strName.length() > NameLimit) {
					productVO2.setProduct_name(strName.substring(0,NameLimit));
				}
			}
			
		}
		
		model.addAttribute("products", productVO);
	}
	@GetMapping("/main/detail")
	public void detail(HttpServletRequest request,  Model model, Criteria cri, RBoardAndMemberVO boardVO, ReviewVO rboardVO, QBoardAndMemberVO qboardVO) {
		String product_id = (String) request.getParameter("product_id");
		System.out.println("----detail----product_id:"+product_id);
		ProductVO productVO = productService.get(Integer.valueOf(product_id));
		
		//상품 이름과 설명의 글짜 길이 줄이기
		String strName = productVO.getProduct_name();
		String strDesc = productVO.getProduct_description();
		if(strDesc != null) {
			if(strDesc.length() > DescLimit) {
				productVO.setProduct_description(strDesc.substring(0, DescLimit));
			}
		}
		if(strName != null) {
			if(strName.length() > NameLimit) {
				productVO.setProduct_name(strName.substring(0,NameLimit));
			}
		}
		
		model.addAttribute("prod", productVO);
		
		log.info("list()..");		
		model.addAttribute("rlist", rboardService.rgetList(cri));
		int total = rboardService.rgetTotalCount();
		log.info("total" + total);
		
		model.addAttribute("pageMaker", new PageVO(cri, total));
		
		System.out.println("---------------rboardVO.getReview_id() : " + rboardVO.getReview_id());

		model.addAttribute("qlist", qboardService.qgetList(cri));
		System.out.println("member+id : " + qboardService.qgetList(cri));
		model.addAttribute("pageMaker", new PageVO(cri, total));	
		
	}
	
	@GetMapping("/main/playVideo")
	public String playVideo(HttpServletRequest request,  Model model) {
		String product_id = (String) request.getParameter("product_id");
		System.out.println("----playVideo----product_id:"+product_id);
		ProductVO productVO = productService.get(Integer.valueOf(product_id));
		model.addAttribute("prod", productVO);
		
		return "/user/playVideo";
	}
	
	// KDM 상품 검색 
	@GetMapping("/main/search")
	public ModelAndView searchProductGET(Criteria cri, ModelAndView mav) {
		mav.setViewName("/main/search");

		mav.addObject("list", mainService.getProductList(cri));
		int total = mainService.getProductTotal(cri);
		mav.addObject("pageMaker", new PageVO(cri, total));
		return mav;
	}
<<<<<<< HEAD
		@GetMapping("/main/cartorder")
=======
	@GetMapping("/main/cartorder")
>>>>>>> origin/dev_ush
	public String cartorder(HttpServletRequest request,  Model model) {
		String product_id = (String) request.getParameter("product_id");
		System.out.println("----cartorder----product_id:"+product_id);
		//ProductVO productVO = productService.get(Integer.valueOf(product_id));
		//model.addAttribute("prod", productVO);
		
		return "/user/cartOrder";
	}
	@GetMapping("/main/checkout")
	public String checkout(HttpServletRequest request,  Model model) {
		String product_id = (String) request.getParameter("product_id");
		System.out.println("----checkout----product_id:"+product_id);
		//ProductVO productVO = productService.get(Integer.valueOf(product_id));
		//model.addAttribute("prod", productVO);
		
		return "/pay/checkout";
	}
<<<<<<< HEAD
	
=======
>>>>>>> origin/dev_ush
}
