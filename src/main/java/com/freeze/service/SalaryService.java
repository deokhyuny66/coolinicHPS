package com.freeze.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.freeze.mapper.SalaryMapper;
import com.freeze.model.SalaryModel;

@Service
public class SalaryService {
	
	@Autowired
	public SalaryMapper mapper; //Interface
	
	public List<SalaryModel> getSalary(){
		return mapper.getSalary();
	}
}