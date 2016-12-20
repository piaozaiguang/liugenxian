/*
 * @(#)MD5Encoder.java $version 2014年11月9日
 *
 * Copyright 2014 liugenxian.com. All rights Reserved.
 * liugenxian.com PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 */
package com.liugenxian.supporter;

import org.springframework.security.crypto.password.PasswordEncoder;

public class MD5Encoder implements PasswordEncoder {

	@Override
	public String encode(CharSequence rawPassword) {
		return MD5.getMD5ofStr(rawPassword.toString());
	}

	@Override
	public boolean matches(CharSequence rawPassword, String encodedPassword) {
		return encodedPassword.equals(encode(rawPassword));
	}

}
