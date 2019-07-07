package com.jxt.mapper;

import java.util.List;

import com.jxt.entity.Auth;

public interface AuthMapper {
	// 增
	int insert(Auth auth);

	// 删
	int delete(int authId);

	// 查
	List<Auth> findByRoleId(int authId);

	// 改
	int update(Auth auth);
}
