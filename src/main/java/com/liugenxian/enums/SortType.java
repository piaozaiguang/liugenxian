package com.liugenxian.enums;

public enum SortType {
	
	LATEST("DATE"),
	POPULAR("COUNT");

	private String code;
	
	private SortType(String code) {
		this.code = code;
	}
	
	public String getCode() {
		return code;
	}
}
