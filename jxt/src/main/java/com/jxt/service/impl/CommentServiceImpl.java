package com.jxt.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jxt.entity.Comment;
import com.jxt.mapper.CommentMapper;
import com.jxt.service.CommentService;

@Service
public class CommentServiceImpl implements CommentService {

	@Autowired
	private CommentMapper commentMapper;

	@Override
	public int add(Comment comment) {
		// TODO Auto-generated method stub
		commentMapper.insert(comment);
		return 0;
	}

	@Override
	public int delete(String commentId) {
		// TODO Auto-generated method stub
		return commentMapper.delete(commentId);
	}

	@Override
	public Comment getCommentByCommentId(String commentId) {
		// TODO Auto-generated method stub
		return commentMapper.findByCommentId(commentId);
	}

	@Override
	public int update(Comment comment) {
		// TODO Auto-generated method stub
		return commentMapper.update(comment);
	}

	@Override
	public List<Comment> search(String studentName) {
		// TODO Auto-generated method stub
		return commentMapper.search(studentName);
	}
	


	

}
