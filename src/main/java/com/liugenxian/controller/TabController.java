/*
 * @(#)TabController.java $version 2014年11月9日
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

import com.liugenxian.enums.ArtistRegion;
import com.liugenxian.enums.SortType;
import com.liugenxian.enums.TabCategory;
import com.liugenxian.service.TabService;

/**
 * @author liugenxian.com
 * @date 2014.10.02
 */
@Controller
@RequestMapping("/tab")
public class TabController {
	
	@Autowired
	private TabService tabService;

	@RequestMapping("/list")
	public ModelAndView list(@RequestParam(value = "page", defaultValue = "0", required = false) int page,
								@RequestParam(value = "tabCategory", defaultValue = "ALL", required = false) TabCategory tabCategory,
								@RequestParam(value = "artistRegion", defaultValue = "ALL", required = false) ArtistRegion artistRegion,
								@RequestParam(value = "artistName", defaultValue = "", required = false) String artistName) {
		return new ModelAndView("tab_list")
			.addObject("paging", tabService.getTabList(page, tabCategory, artistRegion, artistName, SortType.LATEST))
			.addObject("tabCategory", tabCategory)
			.addObject("artistRegion", artistRegion)
			.addObject("artistName", artistName);
	}
	
	@RequestMapping("/detail/{tabNo}")
	public ModelAndView detail(@PathVariable("tabNo") long tabNo) {
		return new ModelAndView("tab_detail").addObject("detail", tabService.getTabDetail(tabNo, false));
	}
}
