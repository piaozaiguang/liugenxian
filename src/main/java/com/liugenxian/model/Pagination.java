/*
 * @(#)Pagination.java $version 2014年11月1日
 *
 * Copyright 2014 liugenxian.com. All rights Reserved.
 * liugenxian.com PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 */

package com.liugenxian.model;

import java.io.Serializable;
import java.util.List;

import lombok.Data;

@Data
public class Pagination<T extends Object> implements Serializable {

	private static final long serialVersionUID = -6075132463794276305L;
	private int currentPage;
	private int pageSize = 20;
	private int totalCount;
	private List<T> list;
	
	public int getPageCount() {
		return getTotalCount() % getPageSize() == 0 ? getTotalCount() / getPageSize() : getTotalCount() / getPageSize() + 1;
	}
}
