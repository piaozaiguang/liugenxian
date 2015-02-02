package com.liugenxian.model.admin;

import lombok.Data;

import org.joda.time.DateTime;

import com.liugenxian.enums.TabCategory;
import com.liugenxian.model.Artist;

@Data
public class AdminTablature {

	private long tabNo;
	private TabCategory tabCategory;
	private String title;
	private String artist;
	private Artist artistObj;
	private String content;
	private String creator;
	private long xiamiSid;
	private int viewCnt;
	private DateTime modYmdt;
	
}
