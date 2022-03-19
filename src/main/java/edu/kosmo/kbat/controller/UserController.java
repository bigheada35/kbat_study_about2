package edu.kosmo.kbat.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.security.SecurityProperties.User;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.kosmo.kbat.principal.PrincipalDetails;
import edu.kosmo.kbat.service.UserService;
import edu.kosmo.kbat.vo.UserVO;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@AllArgsConstructor
@Controller
public class UserController {

   //private UserService userService =  new UserService();
   @Autowired	
   private UserService userService;

 
	@GetMapping("/admin/adminHome")
	public void adminHome() {
		System.out.println("----adminHome");
	}  
	
	@GetMapping("/user/userHome")
	public String userHome(@AuthenticationPrincipal PrincipalDetails principalDetails) {
		System.out.println("principalDetails : " +principalDetails.getUser());
		return "user/userHome";
	}
	
	/*
	@GetMapping("/user/userHome")
	public void userHome() {
		System.out.println("----userHome");
	}
 	*/
   
   @GetMapping("/add/addForm")
   public void userForm() {
      log.info("Welcome userForm");
      
      System.out.println("----- userForm ");
   }

   @PostMapping("/add/addUser")
   public String addUser(UserVO uservo) {
      log.info("post resister");
      System.out.println("----- addUser ");
      userService.addUser(uservo);     
      return "redirect:/";
   }
   
   @GetMapping("/add/addFormAdmin")
   public void addFormAdmin() {
      log.info("Welcome userForm");
      System.out.println("----- userForm ");
   }
   @PostMapping("/add/addAdmin")
   public String addAdmin(UserVO uservo) {
      log.info("post resister");
      System.out.println("----- addUser ");
      userService.addAdmin(uservo);

      return "redirect:/";
   }
   
	@GetMapping("/pay/import")
	public void import2() {
		System.out.println("----import--1--");
		//return "/pay/import"
	}
	
}
