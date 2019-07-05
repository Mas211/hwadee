package com.jxt.service;

import com.jxt.entity.Account;

public interface AccountService {
	// 增
	int add(Account account);

	// 删
	int delete(int accountId);

	// 查
	Account getAccountById(int accountId);

	// 改
	int update(Account account);
	
	Account search(int parId);
}
