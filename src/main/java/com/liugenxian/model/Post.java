/*
 * @(#)Post.java $version 2014年10月9日
 *
 * Copyright 2014 liugenxian.com. All rights Reserved.
 * liugenxian.com PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 */

package com.liugenxian.model;

import java.io.Serializable;

import lombok.Data;

import org.joda.time.DateTime;
import org.springframework.util.StringUtils;

@Data
public class Post implements Serializable {

	private static final long serialVersionUID = 186322114285662985L;
	
	private long postNo;
	private String title;
	private String content;
	private int viewCnt;
	private String creator;
	private DateTime modYmdt;
	public String getTitleShort() {
		if (StringUtils.isEmpty(title) || title.length() < 20) return title;
		return title.substring(0, 17) + "...";
	}
	public String getContentShort() {
		if (StringUtils.isEmpty(content)) return content;
		String noTags = content.replaceAll("<[^>]+>", "");
		if (noTags.length() < 100) return noTags;
		return noTags.substring(0, 97) + "...";
	}
}
