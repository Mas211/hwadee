package com.jxt.service;

import com.jxt.entity.AuthRole;

public interface AuthRoleService {
	// 增
	int add(AuthRole authRole);

	// 删
	int delete(int authRoleId);

	// 查
	AuthRole getAuthRoleById(int authRoleId);

	// 改
	int update(AuthRole authRole);
}
