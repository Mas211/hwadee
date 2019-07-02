package com.jxt.service;

import com.jxt.entity.Account;

public interface RegisterService {

	int register(Account account);
	int check(int id);
	Account check1(int id);
	int update(Account account);
}
