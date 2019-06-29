package com.jxt.mapper;

import com.jxt.entity.Parent;

public interface ParentMapper {
	// 增
	int insert(Parent parent);

	// 删
	int delete(int parentId);

	// 查
	Parent findById(int parentId);

	// 改
	int update(Parent parent);
}
