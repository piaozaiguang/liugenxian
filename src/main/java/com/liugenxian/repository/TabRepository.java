package com.liugenxian.repository;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.liugenxian.model.TabSearchParam;
import com.liugenxian.model.Tablature;
import com.liugenxian.model.admin.AdminTablature;

@Repository
public interface TabRepository {

	/**
	 * selectList
	 * @param param
	 * @return
	 */
	List<Tablature> selectList(TabSearchParam param);
	
	/**
	 * selectDetail
	 * @param tabNo
	 * @return
	 */
	Tablature selectDetail(@Param("tabNo") long tabNo);

	/**
	 * save
	 * @param tab
	 */
	void save(AdminTablature tab);
	
	/**
	 * selectTotalCount
	 * @param param
	 * @return
	 */
	int selectTotalCount(TabSearchParam param);
	
	/**
	 * updateViewCnt
	 * @param tabNo
	 */
	void updateViewCnt(@Param("tabNo") long tabNo);

}
