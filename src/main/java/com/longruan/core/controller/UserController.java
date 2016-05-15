package com.longruan.core.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.longruan.core.model.User;
import com.longruan.core.service.UserService;

@Controller
@RequestMapping("user")
public class UserController {
	
	@Resource(name="userService")
	private UserService userService;
	
	@RequestMapping("findById")
	public String findById(Model model){
		User user = userService.selectByPrimaryKey("1461925041176003");
		model.addAttribute("user", user);
		return "/userList.jsp";
	}
}
