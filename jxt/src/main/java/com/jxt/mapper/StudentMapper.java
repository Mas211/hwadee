package com.jxt.mapper;

import com.jxt.entity.Student;

public interface StudentMapper {
	// 增
	int insert(Student student);

	// 删
	int delete(int studentId);

	// 查
	Student findById(int studentId);

	// 改
	int update(Student student);
}
