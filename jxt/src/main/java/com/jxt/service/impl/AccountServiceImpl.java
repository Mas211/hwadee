package com.jxt.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jxt.entity.Account;
import com.jxt.mapper.AccountMapper;
import com.jxt.service.AccountService;

@Service
public class AccountServiceImpl implements AccountService {
	@Autowired
	private AccountMapper accountMapper;

	@Override
	public int add(Account account) {
		// TODO Auto-generated method stub
		int rows = accountMapper.insert(account);
		if( rows != 1 ) {
			throw new RuntimeException("添加失败");
		}
		return account.getAccountId();
	}

	@Override
	public int delete(int accountId) {
		// TODO Auto-generated method stub
		return accountMapper.delete(accountId);
	}

	@Override
	public int update(Account account) {
		// TODO Auto-generated method stub
		return accountMapper.update(account);
	}

	@Override
	public Account search(int parId) {
		// TODO Auto-generated method stub
		return accountMapper.search(parId);
	}

	@Override
	public Account getAccountById(int accountId) {
		// TODO Auto-generated method stub
		return accountMapper.findById(accountId);
	}
	
	@Override
	public int updateTime(Account account) {
		System.out.println("我来");
		System.out.println(account.toString());
		return accountMapper.updateTime(account);
	}

}
