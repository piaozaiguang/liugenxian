/*
 * @(#)AdminController.java $version 2014年11月9日
 *
 * Copyright 2014 liugenxian.com. All rights Reserved.
 * liugenxian.com PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 */
package com.liugenxian.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.liugenxian.enums.ArtistIndex;
import com.liugenxian.enums.ArtistRegion;
import com.liugenxian.enums.SortType;
import com.liugenxian.enums.TabCategory;
import com.liugenxian.model.Post;
import com.liugenxian.model.admin.AdminTablature;
import com.liugenxian.service.PostService;
import com.liugenxian.service.TabService;

/**
 * @author liugenxian.com
 * @date 2014.09.20
 */
@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	private PostService postService;
	
	@Autowired
	private TabService tabService;
	
	@ModelAttribute("artistRegions")
	public ArtistRegion[] getArtistRegions() {
		return ArtistRegion.values();
	}
	
	@ModelAttribute("artistIndexes")
	public ArtistIndex[] getArtistIndexes() {
		return ArtistIndex.values();
	}
	
	@ModelAttribute("tabCategories")
	public TabCategory[] getTabCategories() {
		return TabCategory.values();
	}

	@RequestMapping("")
	public ModelAndView index() {
		return new ModelAndView("admin");
	}
	
	@RequestMapping("/post/list")
	public ModelAndView postList(@RequestParam(value = "page", defaultValue = "0", required = false) int page) {
		return new ModelAndView("admin_post_list")
				.addObject("paging", postService.getPostList(page, SortType.LATEST));
	}
	
	@RequestMapping("/post/new")
	public ModelAndView newPost() {
		return new ModelAndView("admin_post_edit");
	}
	
	@RequestMapping(method=RequestMethod.POST, value="/post/save")
	@ResponseBody
	public String savePost(@RequestBody Post post) {
		postService.savePost(post);
		return "redirect:/admin/post/list";
	}
	
	@RequestMapping("/post/edit/{postNo}")
	public ModelAndView editPost(@PathVariable("postNo") long postNo) {
		return new ModelAndView("admin_post_edit")
				.addObject("postDetail", postService.getPostDetail(postNo, true));
	}
	
	@RequestMapping("/tab/list")
	public ModelAndView tabList(@RequestParam(value = "page", defaultValue = "0", required = false) int page) {
		return new ModelAndView("admin_tab_list")
				.addObject("paging", tabService.getTabList(page, TabCategory.ALL, ArtistRegion.ALL, "", SortType.LATEST));
	}
	
	@RequestMapping("/tab/new")
	public ModelAndView newTab() {
		return new ModelAndView("admin_tab_edit");
	}
	
	@RequestMapping(method=RequestMethod.POST, value="/tab/save")
	@ResponseBody
	public String saveTab(@RequestBody AdminTablature adminTab) {
		tabService.saveTab(adminTab);
		return "redirect:/admin/tab/list";
	}
	
	@RequestMapping("/tab/edit/{tabNo}")
	public ModelAndView editTab(@PathVariable("tabNo") long tabNo) {
		return new ModelAndView("admin_tab_edit")
				.addObject("tabDetail", tabService.getTabDetail(tabNo, true));
	}

}
