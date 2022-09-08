package com.freeze.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.freeze.mapper.CalcMapper;
import com.freeze.model.CalcModel;

@Service
public class CalcService {
	
	@Autowired
	public CalcMapper mapper; //Interface
	
	public List<CalcModel> getCalc(){
		return mapper.getCalc();
	}
}