/*
 * @(#)MD5Encoder.java $version 2014年11月9日
 *
 * Copyright 2014 liugenxian.com. All rights Reserved.
 * liugenxian.com PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 */
package com.liugenxian.supporter;

import org.springframework.dao.DataAccessException;
import org.springframework.security.authentication.encoding.PasswordEncoder;

public class MD5Encoder implements PasswordEncoder {

	@Override
	public String encodePassword(String origPwd, Object salt) throws DataAccessException {
		return MD5.getMD5ofStr(origPwd);
	}

	@Override
	public boolean isPasswordValid(String encPwd, String origPwd, Object salt) throws DataAccessException {
		return encPwd.equals(encodePassword(origPwd, salt));
	}

}
