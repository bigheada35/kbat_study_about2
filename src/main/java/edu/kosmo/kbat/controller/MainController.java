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
import edu.kosmo.kbat.vo.MemberVO;
import edu.kosmo.kbat.vo.ProductVO;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@AllArgsConstructor
@Controller
public class MainController {
	
	final int NameLimit = 15;
	final int DescLimit = 25;
	
<<<<<<< HEAD
=======

	@Autowired
	private	MyPageService myPageService;
	
>>>>>>> efc6e90bd5c32093481fe53d03b733fc4629a760
	@Autowired
	private	ProductService productService;

	//KDM 검색
	@Autowired
	private MainService mainService;
	
	
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
	public void detail(HttpServletRequest request,  Model model) {
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
>>>>>>> efc6e90bd5c32093481fe53d03b733fc4629a760
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
}
