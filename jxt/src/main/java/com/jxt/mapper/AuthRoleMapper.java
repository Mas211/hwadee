package com.jxt.mapper;

import com.jxt.entity.AuthRole;

public interface AuthRoleMapper {
	// 增
	int insert(AuthRole authRole);

	// 删
	int delete(int authRoleId);

	// 查
	AuthRole findById(int authRoleId);

	// 改
	int update(AuthRole authRole);
}
