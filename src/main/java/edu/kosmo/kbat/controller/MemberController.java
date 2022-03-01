package edu.kosmo.kbat.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import edu.kosmo.kbat.service.MemberService;
import edu.kosmo.kbat.vo.MemberVO;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@AllArgsConstructor
@Controller
public class MemberController {

   //private UserService userService =  new UserService();
   @Autowired	
   private MemberService userService;

 
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
   public String addUser(MemberVO membervo) {
      log.info("post resister");
      System.out.println("----- addUser ");
      userService.addMember(membervo);

      return "redirect:/";
   }
   
   @GetMapping("/add/addFormAdmin")
   public void addFormAdmin() {
      log.info("Welcome userForm");
      System.out.println("----- userForm ");
   }
   @PostMapping("/add/addAdmin")
   public String addAdmin(MemberVO membervo) {
      log.info("post resister");
      System.out.println("----- addUser ");
      userService.addAdmin(membervo);

      return "redirect:/";
   }
}
