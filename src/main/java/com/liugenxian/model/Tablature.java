/*
 * @(#)Tablature.java $version 2014年10月9日
 *
 * Copyright 2014 liugenxian.com. All rights Reserved.
 * liugenxian.com PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 */

package com.liugenxian.model;

import java.io.Serializable;

import lombok.Data;

import org.joda.time.DateTime;
import org.springframework.util.StringUtils;

import com.liugenxian.enums.TabCategory;

@Data
public class Tablature implements Serializable {
	
	private static final long serialVersionUID = 4836434611136623125L;
	
	private long tabNo;
	private TabCategory tabCategory;
	private String title;
	private String artist;
	private String content;
	private String creator;
	private long xiamiSid;
	private int viewCnt;
	private DateTime modYmdt;
	public String getTitleShort() {
		if (StringUtils.isEmpty(title) || title.length() < 20) return title;
		return title.substring(0, 17) + "...";
	}

}
