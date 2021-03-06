package com.jxt.mapper;

import com.jxt.entity.Account;

public interface AccountMapper {
	// 增
	int insert(Account account);

	// 删
	int delete(int accountId);

	// 查
	Account findById(int accountId);

	// 改
	int update(Account account);
	
	//查班级id
	int findClassId(int accountId);

	Account search(int parId);
	
	int updateTime(Account account);

}
