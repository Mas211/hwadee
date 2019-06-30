package com.jxt.mapper;

import com.jxt.entity.Auth;

public interface AuthMapper {
	// 增
	int insert(Auth auth);

	// 删
	int delete(int authId);

	// 查
	Auth findById(int authId);

	// 改
	int update(Auth auth);
}
