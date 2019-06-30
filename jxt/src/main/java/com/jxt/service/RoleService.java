package com.jxt.service;

import com.jxt.entity.Role;

public interface RoleService {
	// 增
	int add(Role role);

	// 删
	int delete(int roleId);

	// 查
	Role getRoleById(int roleId);

	// 改
	int update(Role role);
}
