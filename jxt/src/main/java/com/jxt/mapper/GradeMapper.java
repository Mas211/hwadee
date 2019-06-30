package com.jxt.mapper;

import com.jxt.entity.Grade;

public interface GradeMapper {
	// 增
	int insert(Grade grade);

	// 删
	int delete(int gradeId);

	// 查
	Grade findById(int gradeId);

	// 改
	int update(Grade grade);
}
