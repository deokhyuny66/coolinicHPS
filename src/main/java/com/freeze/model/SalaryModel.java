package com.freeze.model;

import lombok.Builder;
import lombok.Data;

@Builder @Data
public class SalaryModel {
	private int id;
	private String name;
	private String email;
	
	public void setId(int id){
		System.out.println(id);
    	this.id = id;
    }
    
    public int getId(){
    	System.out.println(id);
    	return this.id;
    }
    
    public void setName(String name){
    	System.out.println(name);
    	this.name = name;
    }
    
    public String getName(){
    	System.out.println(name);
    	return this.name;
    }
    
    public void setEmail(String email){
    	System.out.println(email);
    	this.email = email;
    }
    
    public String getEmail(){
    	System.out.println(email);
    	return this.email;
    }
}
