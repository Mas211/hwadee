package com.jxt.mapper;

import com.jxt.entity.Teacher;

public interface TeacherMapper {
	// 增
	int insert(Teacher teacher);

	// 删
	int delete(int teacherId);

	// 查
	Teacher findById(int teacherId);

	// 改
	int update(Teacher teacher);
}
