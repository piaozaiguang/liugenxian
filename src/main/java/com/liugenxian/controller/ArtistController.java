/*
 * @(#)ArtistController.java $version 2014年11月9日
 *
 * Copyright 2014 liugenxian.com. All rights Reserved.
 * liugenxian.com PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 */
package com.liugenxian.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author liugenxian.com
 * @date 2014.10.01
 */
@Controller
@RequestMapping("/artist")
public class ArtistController {

	@RequestMapping("/list")
	public ModelAndView index() {
		return new ModelAndView("artist");
	}
}
