package com.jxt.mapper;

public interface ClassMapper {
	// 增
	int insert(com.jxt.entity.Class cl);

	// 删
	int delete(int classId);

	// 查
	com.jxt.entity.Class findById(int classId);

	// 改
	int update(com.jxt.entity.Class cl);
}
