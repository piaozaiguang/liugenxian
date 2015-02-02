/*
 * @(#)SearchParam.java $version 2014年11月9日
 *
 * Copyright 2014 liugenxian.com. All rights Reserved.
 * liugenxian.com PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 */
package com.liugenxian.model;

import lombok.Data;

import com.liugenxian.enums.SortType;

@Data
public class SearchParam {
	
	private String keyword;
	private int page;
	private int pageSize = 20;
	private SortType sortType;
	
	public SearchParam(int page) {
		this.page = page;
	}
	
	public int getOffset() {
		return (getPage() > 0 ? getPage() - 1 : getPage()) * getPageSize();
	}
}
