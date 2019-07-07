package com.jxt.service;

import java.util.List;

import com.jxt.entity.Auth;

public interface AuthService {
	// 增
	int add(Auth auth);

	// 删
	int delete(int authId);

	// 查
	List<Auth> getAuthByRoleId(int authId);

	// 改
	int update(Auth auth);
}
