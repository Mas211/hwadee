package com.jxt.service;

import java.util.List;

import com.jxt.entity.Comment;

public interface CommentService {
	// 增
	int add(Comment comment);

	// 删
	int delete(String commentId);

	// 查
	Comment getCommentByCommentId(String commentId);

	// 改
	int update(Comment comment);
	
	List<Comment>search(String studentName);
}
