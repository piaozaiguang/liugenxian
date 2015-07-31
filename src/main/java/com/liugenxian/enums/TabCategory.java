package com.liugenxian.enums;

public enum TabCategory {
	
	ALL("ALL", "全部"),
	FINGER("FINGER", "指弹谱"),
	SONG("SONG", "弹唱谱");
	
	private String code;
	private String text;
	
	private TabCategory(String code, String text) {
		this.code = code;
		this.text = text;
	}
	
	public String getCode() {
		return code;
	}
	
	public String getText() {
		return text;
	}
}
