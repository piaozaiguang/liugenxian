/*
 * @(#)Artist.java $version 2014年10月9日
 *
 * Copyright 2014 liugenxian.com. All rights Reserved.
 * liugenxian.com PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 */

package com.liugenxian.model;

import java.io.Serializable;

import lombok.Data;

import com.liugenxian.enums.ArtistIndex;
import com.liugenxian.enums.ArtistRegion;

@Data
public class Artist implements Serializable {

	private static final long serialVersionUID = -5196249619579273823L;
	
	private long artistNo;
	private ArtistRegion artistRegion;
	private String artistName;
	private ArtistIndex artistIdx;

}
