package com.bike.controller;

import com.bike.model.Bike;
import com.bike.model.Person;
import com.bike.model.Station;
import com.bike.service.PersonService;
import com.bike.service.StationService;
import com.bike.util.BikeConstants;
import com.bike.util.JsonResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.portlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.Arrays;
import java.util.List;

/**
 * 处理用户请求控制器
 * */
@Controller
@RequestMapping("/station")
public class StationController {
	@Autowired
	@Qualifier("stationService")
	private StationService stationService;

	@RequestMapping(value = "/addStation",method = RequestMethod.POST)
	public JsonResult addStation(Station station){
		stationService.addStations(station);
		return JsonResult.ok();
	}

	@RequestMapping(value = "/dispatch",method = RequestMethod.POST)
	public JsonResult dispatch(@RequestParam(value = "bikeIds[]") String[] bikeIds,@RequestParam("stationId") int stationId){
		List bikeId= Arrays.asList(bikeIds);
		stationService.dispatch(bikeId,stationId);
		return JsonResult.ok();
	}
}
