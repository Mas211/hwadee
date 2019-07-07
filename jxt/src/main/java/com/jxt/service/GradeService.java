package com.jxt.service;

import java.util.List;

import com.jxt.entity.Grade;

public interface GradeService {
	// 增
	int add(Grade grade);

	// 删
	int delete(int gradeId);

	// 查
	List<Grade> getGradeById(int stuId);
	List<Grade> grades();
	int getStuIdByParId(int parId);

	// 改
	int update(Grade grade);
}
