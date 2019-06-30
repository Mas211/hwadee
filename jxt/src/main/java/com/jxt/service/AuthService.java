package com.jxt.service;

import com.jxt.entity.Auth;

public interface AuthService {
	// 增
	int add(Auth auth);

	// 删
	int delete(int authId);

	// 查
	Auth getAuthById(int authId);

	// 改
	int update(Auth auth);
}
