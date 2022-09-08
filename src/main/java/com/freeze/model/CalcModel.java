package com.freeze.model;

import lombok.Builder;
import lombok.Data;

@Builder @Data
public class CalcModel {
	String widVal = null;
	String vertVal = null;
	String hegVal = null;
	String storeVal = null;
	String tempVal = null;
	String mtypeVal = null;
	String msizeVal = null;
	String purcheseVal = null;
	
	public String getWidVal() {
		System.out.println(widVal);
		return widVal;
	}
	public void setWidVal(String widVal) {
		System.out.println(widVal);
		this.widVal = widVal;
	}
	public String getVertVal() {
		return vertVal;
	}
	public void setVertVal(String vertVal) {
		System.out.println(vertVal);
		this.vertVal = vertVal;
	}
	public String getHegVal() {
		return hegVal;
	}
	public void setHegVal(String hegVal) {
		System.out.println(hegVal);
		this.hegVal = hegVal;
	}
	public String getStoreVal() {
		return storeVal;
	}
	public void setStoreVal(String storeVal) {
		this.storeVal = storeVal;
	}
	public String getTempVal() {
		return tempVal;
	}
	public void setTempVal(String tempVal) {
		this.tempVal = tempVal;
	}
	public String getMtypeVal() {
		return mtypeVal;
	}
	public void setMtypeVal(String mtypeVal) {
		this.mtypeVal = mtypeVal;
	}
	public String getMsizeVal() {
		return msizeVal;
	}
	public void setMsizeVal(String msizeVal) {
		this.msizeVal = msizeVal;
	}
	public String getPurcheseVal() {
		return purcheseVal;
	}
	public void setPurcheseVal(String purcheseVal) {
		this.purcheseVal = purcheseVal;
	}
}
