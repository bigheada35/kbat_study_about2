package edu.kosmo.kbat.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import edu.kosmo.kbat.service.SecurityService;
import edu.kosmo.kbat.vo.MemberVO;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@AllArgsConstructor
@Controller
public class MemberController {

   //private UserService userService =  new UserService();
   @Autowired	
   private SecurityService securityService;

 
	@GetMapping("/admin/adminHome")
	public void adminHome() {
		System.out.println("----adminHome");
	}  
	
	@GetMapping("/user/userHome")
	public void userHome() {
		System.out.println("----userHome");
	}
 
   
   @GetMapping("/add/addForm")
   public void userForm() {
      log.info("Welcome userForm");
      System.out.println("----- userForm ");
   }

   @PostMapping("/add/addUser")
   public String addUser(MemberVO memberVO) {
      log.info("post resister");
      System.out.println("----- addUser ");
      //securityService.addMember(memberVO);

      return "redirect:/";
   }
   
   @GetMapping("/add/addFormAdmin")
   public void addFormAdmin() {
      log.info("Welcome userForm");
      System.out.println("----- userForm ");
   }
   @PostMapping("/add/addAdmin")
   public String addAdmin(MemberVO memberVO) {
      log.info("post resister");
      System.out.println("----- addUser ");
      //securityServiceService.addAdmin(memberVO);

      return "redirect:/";
   }
   
   @PostMapping("/passwordChange/change")
	public ModelAndView passwordChangeChange(String member_id, String password, ModelAndView mav) throws Exception {
		log.info("/login/passwordChangeChange");
		securityService.updatePassword(member_id, password);
		mav.setViewName("/login/login");
		return mav;
	}
}
