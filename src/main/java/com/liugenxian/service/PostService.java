package com.liugenxian.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.liugenxian.enums.SortType;
import com.liugenxian.model.Pagination;
import com.liugenxian.model.Post;
import com.liugenxian.model.SearchParam;
import com.liugenxian.repository.PostRepository;
import com.liugenxian.supporter.KeyGenerator;

@Service
public class PostService {
	
	@Autowired
	private PostRepository postRepository;
	
	public void savePost(Post post) {
		if (post.getPostNo() == 0) post.setPostNo(KeyGenerator.getKey());
		postRepository.save(post);
	}
	
	public Pagination<Post> getPostList(int pageNo, SortType sortType) {
		SearchParam param = new SearchParam(pageNo);
		param.setSortType(sortType);
		Pagination<Post> paging = new Pagination<Post>();
		paging.setList(postRepository.selectList(param));
		paging.setTotalCount(postRepository.selectTotalCount());
		paging.setCurrentPage(pageNo == 0 ? 1 : pageNo);
		return paging;
	}
	
	public Post getPostDetail(long postNo, boolean isAdmin) {
		if (!isAdmin) {
			postRepository.updateViewCnt(postNo);
		}
		return postRepository.selectDetail(postNo);
	}

}
