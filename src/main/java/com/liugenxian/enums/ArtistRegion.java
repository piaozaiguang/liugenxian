package com.liugenxian.enums;

public enum ArtistRegion {
	
	ALL("ALL", "全部"),
	CN_MAN("CN_MAN", "华语男"),
	CN_WOMEN("CN_WOMEN", "华语女"),
	CN_GROUP("CN_GROUP", "华语组合"),
	EU_MAN("EU_MAN", "欧美男"),
	EU_WOMEN("EU_WOMEN", "欧美女"),
	EU_GROUP("EU_GROUP", "欧美组合"),
	JK_MAN("JK_MAN", "日韩男"),
	JK_WOMEN("JK_WOMEN", "日韩女"),
	JK_GROUP("JK_GROUP", "日韩组合"),
	OTHER("OTHER", "其他");
	
	private String code;
	private String text;
	
	private ArtistRegion(String code, String text) {
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
