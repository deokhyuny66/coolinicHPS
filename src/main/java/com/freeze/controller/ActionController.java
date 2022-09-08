package com.freeze.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.freeze.model.CalcModel;
import com.freeze.service.CalcService;

@Controller
public class ActionController {

	/*
	 * @Autowired CalcService calcService;
	 */
	@RequestMapping(value = "/calcProc", method=RequestMethod.POST)
	public String goHome(HttpServletRequest request) {
		/*
		 * ModelAndView mav = new ModelAndView(); List<CalcModel> calcList =
		 * calcService.getCalc();
		 * 
		 * System.out.println("proc Controller 호출 처리"); mav.addObject("CalcList",
		 * calcList); mav.setViewName("/proc/calcProc");
		 */
		return "/calcProc";
	}
}