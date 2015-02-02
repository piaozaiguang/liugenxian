package com.liugenxian.enums;

public enum ArtistIndex {

	_("_", "0~9"),
	A("A", "A"),
	B("B", "B"),
	C("C", "C"),
	D("D", "D"),
	E("E", "E"),
	F("F", "F"),
	G("G", "G"),
	H("H", "H"),
	I("I", "I"),
	J("J", "J"),
	K("K", "K"),
	L("L", "L"),
	M("M", "M"),
	N("N", "N"),
	O("O", "O"),
	P("P", "P"),
	Q("Q", "Q"),
	R("R", "R"),
	S("S", "S"),
	T("T", "T"),
	U("U", "U"),
	V("V", "V"),
	W("W", "W"),
	X("X", "X"),
	Y("Y", "Y"),
	Z("Z", "Z");
	
	private String code;
	private String text;
	
	private ArtistIndex(String code, String text) {
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
