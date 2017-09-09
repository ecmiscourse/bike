package com.bike.controller;

import com.bike.model.Bike;
import com.bike.model.Person;
import com.bike.service.BikeService;
import com.bike.service.PersonService;
import com.bike.util.BikeConstants;
import com.bike.util.JsonResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.portlet.ModelAndView;

import javax.servlet.http.HttpSession;

/**
 * 处理用户请求控制器
 * */
@Controller
@RequestMapping("/bike")
public class BikeController {
	@Autowired
	@Qualifier("bikeService")
	private BikeService bikeService;

	@RequestMapping(value = "/borrowBike",method = RequestMethod.GET)
	public JsonResult borrowBike(int id){
		Bike bike=bikeService.getBikeById(id);
		bikeService.updateBikeStatus(id,0);//0:状态为借
		return JsonResult.ok();
	}

	@RequestMapping(value = "/returnBike",method = RequestMethod.GET)
	public JsonResult returnBike(int id){
		Bike bike=bikeService.getBikeById(id);
		bikeService.updateBikeStatus(id,1);////0:状态为还
		return JsonResult.ok();
	}
	
	
	
	
	
	
}
