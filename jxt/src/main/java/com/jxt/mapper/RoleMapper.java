package com.jxt.mapper;

import com.jxt.entity.Role;

public interface RoleMapper {
	// 增
	int insert(Role role);

	// 删
	int delete(int roleId);

	// 查
	Role findById(int roleId);

	// 改
	int update(Role role);
}
