/*
 * @(#)IndexController.java $version 2014年11月9日
 *
 * Copyright 2014 liugenxian.com. All rights Reserved.
 * liugenxian.com PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 */
package com.liugenxian.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.liugenxian.enums.ArtistRegion;
import com.liugenxian.enums.SortType;
import com.liugenxian.enums.TabCategory;
import com.liugenxian.service.PostService;
import com.liugenxian.service.TabService;

/**
 * @author liugenxian.com
 * @date 2014.09.20
 */
@Controller
public class IndexController {

	@Autowired
	private PostService postService;
	
	@Autowired
	private TabService tabService;
	
	@RequestMapping("")
	public ModelAndView index(HttpServletRequest request) {
		return new ModelAndView("home")
			.addObject("latestPost", postService.getPostList(0, SortType.LATEST))
			.addObject("popularPost", postService.getPostList(0, SortType.POPULAR))
			.addObject("latestTab", tabService.getTabList(0, TabCategory.ALL, ArtistRegion.ALL, "", SortType.LATEST))
			.addObject("popularTab", tabService.getTabList(0, TabCategory.ALL, ArtistRegion.ALL, "", SortType.POPULAR));
	}
}
