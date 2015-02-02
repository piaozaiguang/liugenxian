/*
 * @(#)PostController.java $version 2014年11月9日
 *
 * Copyright 2014 liugenxian.com. All rights Reserved.
 * liugenxian.com PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 */
package com.liugenxian.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.liugenxian.enums.SortType;
import com.liugenxian.service.PostService;

/**
 * @author liugenxian.com
 * @date 2014.10.01
 */
@Controller
@RequestMapping("/post")
public class PostController {
	
	@Autowired
	private PostService postService;

	@RequestMapping("/list")
	public ModelAndView list(@RequestParam(value = "page", defaultValue = "0", required = false) int page) {
		return new ModelAndView("post_list")
			.addObject("paging", postService.getPostList(page, SortType.LATEST));
	}
	
	@RequestMapping("/detail/{postNo}")
	public ModelAndView detail(@PathVariable("postNo") long postNo) {
		return new ModelAndView("post_detail").addObject("postDetail", postService.getPostDetail(postNo, false));
	}
}
