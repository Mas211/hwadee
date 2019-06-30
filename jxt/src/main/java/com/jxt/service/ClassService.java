package com.jxt.service;

public interface ClassService {
	// 增
	int add(com.jxt.entity.Class class1);

	// 删
	int delete(int classId);

	// 查
	com.jxt.entity.Class getClassById(int classId);

	// 改
	int update(com.jxt.entity.Class class1);
}
