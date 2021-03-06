package com.bike.controller;

import javax.servlet.http.HttpSession;

import com.bike.util.JsonResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.portlet.ModelAndView;

import com.bike.model.Person;
import com.bike.service.PersonService;
import com.bike.util.BikeConstants;

/**
 * 处理用户请求控制器
 * */
@Controller
@RequestMapping("/")
public class PersonController {
	
	/**
	 * 自动注入personService
	 * */
	@Autowired
	@Qualifier("personService")
	private PersonService personService;
		
	/**
	 * 处理登录请求
	 * @return 跳转的视图
	 * */
	@RequestMapping(value="/login")
	 public String login(ModelAndView mv, Person person,HttpSession session){
		// 调用业务逻辑组件判断用户是否可以登录
		Person loginPerson = personService.login(person);
		String url="";
		if(person != null){
			 //将用户保存到HttpSession当中
			session.setAttribute(BikeConstants.USER_SESSION, person);
			 //客户端跳转到main页面
			url="main";
		}else{
			 //设置登录失败提示信息
//			mv.addObject("message", "登录名或密码错误!请重新输入");
			 //服务器内部跳转到登录页面
//			mv.setViewName("forward:/loginForm");
			url="login";
		}
 		return url;
	}
	
	@RequestMapping(value="/header")
	 public String header(){
		return "header";
	}
	
	@RequestMapping(value="/menu")
	 public String menu(){
		return "menu";
	}
	
	@RequestMapping(value="/footer")
	 public String footer(){
		return "footer";
	}

	@RequestMapping(value = "/addPerson",method = RequestMethod.POST)
	public JsonResult addPerson(Person person){
		personService.addPerson(person);
		return JsonResult.ok();
	}

	@RequestMapping(value = "/updatePerson",method = RequestMethod.GET)
	public JsonResult updatePerson(Person person){
		personService.updatePerson(person);
		return JsonResult.ok();
	}

	@RequestMapping(value = "/deletePerson",method = RequestMethod.GET)
	public JsonResult deletePerson(int id){
		personService.deletePerson(id);
		return JsonResult.ok();
	}
}
