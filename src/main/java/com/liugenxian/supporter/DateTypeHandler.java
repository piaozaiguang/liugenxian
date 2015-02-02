/*
 * @(#)DateTypeHandler.java $version 2015.1.31
 *
 * Copyright 2015 liugenxian.com. All rights Reserved.
 * liugenxian.com PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 */
package com.liugenxian.supporter;

import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.apache.ibatis.type.JdbcType;
import org.apache.ibatis.type.TypeHandler;
import org.joda.time.DateTime;

/**
 * com.liugenxian.supporter.DateTypeHandler.java
 * @author liugenxian.com
 * @date 2015.1.31
 */
public class DateTypeHandler implements TypeHandler<DateTime> {

	@Override
	public DateTime getResult(ResultSet rs, String columnName) throws SQLException {
		java.sql.Timestamp timestamp = rs.getTimestamp(columnName);  
		if (timestamp != null) {
			return new DateTime(timestamp.getTime());
		}
		return null;
	}

	@Override
	public DateTime getResult(ResultSet rs, int columnIndex) throws SQLException {
		java.sql.Timestamp timestamp = rs.getTimestamp(columnIndex);  
		if (timestamp != null) {
			return new DateTime(timestamp.getTime());
		}
		return null;
	}

	@Override
	public DateTime getResult(CallableStatement cs, int columnIndex) throws SQLException {
		java.sql.Timestamp timestamp = cs.getTimestamp(columnIndex);  
		if (timestamp != null) {
			return new DateTime(timestamp.getTime());
		}
		return null;
	}

	@Override
	public void setParameter(PreparedStatement ps, int i, DateTime param, JdbcType jdbcType) throws SQLException {
		ps.setTimestamp(i, new java.sql.Timestamp(param.getMillis()));
	}

}
