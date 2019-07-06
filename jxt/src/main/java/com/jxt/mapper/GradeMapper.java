package com.jxt.mapper;

import java.util.List;

import com.jxt.entity.Grade;

public interface GradeMapper {
	// 增
	int insert(Grade grade);

	// 删
	int delete(int gradeId);

	// 查
	List<Grade> findById(int stuId);
	List<Grade> findAll();

	// 改
	int update(Grade grade);
}
