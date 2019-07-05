package com.jxt.mapper;

import java.util.List;

import com.jxt.entity.Comment;

public interface CommentMapper {
	// 增
	int insert(Comment comment);

	// 删
	int delete(String commentId);

	// 查
	Comment findByCommentId(String commentId);

	// 改
	int update(Comment comment);
	
	List<Comment>search(String studentName);
}
