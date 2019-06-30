package com.jxt.service;

import com.jxt.entity.Grade;

public interface GradeService {
	// 增
	int add(Grade grade);

	// 删
	int delete(int gradeId);

	// 查
	Grade getGradeById(int gradeId);

	// 改
	int update(Grade grade);
}
