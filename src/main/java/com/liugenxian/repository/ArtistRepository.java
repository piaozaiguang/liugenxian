package com.liugenxian.repository;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.liugenxian.model.Artist;
import com.liugenxian.model.SearchParam;

@Repository
public interface ArtistRepository {

	/**
	 * selectList
	 * @param param
	 * @return
	 */
	List<Artist> selectList(SearchParam param);
	
	/**
	 * selectDetail
	 * @param artistNo
	 * @return
	 */
	Artist selectDetail(@Param("artistNo") long artistNo);
	
	/**
	 * selectDetailByName
	 * @param artistName
	 * @return
	 */
	Artist selectDetailByName(@Param("artistName") String artistName);

	/**
	 * save
	 * @param artist
	 */
	void save(Artist artist);
	
	/**
	 * update
	 * @param artist
	 */
	void update(Artist artist);
	
	/**
	 * selectTotalCount
	 * @return
	 */
	int selectTotalCount();

}
