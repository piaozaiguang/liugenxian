/*
 * @(#)TabSearchParam.java $version 2015年07月31日
 *
 * Copyright 2015 liugenxian.com. All rights Reserved.
 * liugenxian.com PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 */
package com.liugenxian.model;

import lombok.Getter;
import lombok.Setter;

import com.liugenxian.enums.ArtistRegion;
import com.liugenxian.enums.TabCategory;

@Getter
@Setter
public class TabSearchParam extends SearchParam {
	
	private TabCategory tabCategory;
	private ArtistRegion artistRegion;
	private String artistName;
	
	public TabSearchParam(int page) {
		super(page);
	}
}
