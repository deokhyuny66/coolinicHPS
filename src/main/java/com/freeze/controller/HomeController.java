package com.freeze.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.freeze.model.SalaryModel;
import com.freeze.service.SalaryService;

@Controller
public class HomeController {

	@Autowired
	SalaryService salaryService;
	
	@RequestMapping(value = "/home", method=RequestMethod.GET)
	public ModelAndView goHome(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		List<SalaryModel> salaryList = salaryService.getSalary();
	
		System.out.println("HOME 호출");
		mav.addObject("salaryList", salaryList);
		mav.setViewName("/home");
		return mav;
	}
}