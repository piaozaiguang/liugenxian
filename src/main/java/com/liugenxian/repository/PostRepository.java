package com.liugenxian.repository;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.liugenxian.model.Post;
import com.liugenxian.model.SearchParam;

@Repository
public interface PostRepository {

	/**
	 * selectList
	 * @param param
	 * @return
	 */
	List<Post> selectList(SearchParam param);
	
	/**
	 * selectDetail
	 * @param postNo
	 * @return
	 */
	Post selectDetail(@Param("postNo") long postNo);

	/**
	 * save
	 * @param post
	 */
	void save(Post post);
	
	/**
	 * selectTotalCount
	 * @return
	 */
	int selectTotalCount();

	/**
	 * updateViewCnt
	 * @param postNo
	 */
	void updateViewCnt(@Param("postNo") long postNo);
}
