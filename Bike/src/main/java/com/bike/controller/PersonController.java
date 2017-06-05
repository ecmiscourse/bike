package com.bike.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 * 处理用户请求控制器
 * */
@Controller
public class PersonController {
	
	/**
	 * 自动注入UserService
	 * */
//	@Autowired
//	@Qualifier("hrmService")
//	private HrmService hrmService;
		
	/**
	 * 处理登录请求
	 * @return 跳转的视图
	 * */
	@RequestMapping(value="/login")
	 public String login(){
		// 调用业务逻辑组件判断用户是否可以登录@RequestParam("loginname") String loginname,@RequestParam("password") String password
//		User user = hrmService.login(loginname, password);
//		if(user != null){
			// 将用户保存到HttpSession当中
//			session.setAttribute(HrmConstants.USER_SESSION, user);
			// 客户端跳转到main页面
//		}else{
			// 设置登录失败提示信息
//			mv.addObject("message", "登录名或密码错误!请重新输入");
			// 服务器内部跳转到登录页面
//			mv.setViewName("forward:/loginForm");
//		}
		return "main";
	}
	
	
	
	
	
	
	
}
