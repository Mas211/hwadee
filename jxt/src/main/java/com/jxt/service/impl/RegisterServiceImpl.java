package com.jxt.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jxt.entity.Account;
import com.jxt.mapper.AccountMapper;
import com.jxt.service.RegisterService;

@Service
public class RegisterServiceImpl implements RegisterService {

	@Autowired
	private AccountMapper accountMapper;
	
	
	@Override
	public int register(Account account) {
		// TODO Auto-generated method stub
		accountMapper.insert(account);
		return 0;
	}
	@Override
	public int check(int id) {
		Account account = accountMapper.findById(id);
		if( null != account ) {
			return 1;
		}
		return 0;
	}
	@Override
	public Account check1(int id) {
		Account account = accountMapper.findById(id);
		return account;
	}
	@Override
	public int check2(String id) {
		// TODO Auto-generated method stub
		int id_int = Integer.parseInt(id);
		Account account = accountMapper.findById(id_int);
		if( null != account ) {
			return 1;
		}
		return 0;
	}
	@Override
	public int check3(String id) {
		// TODO Auto-generated method stub
		int id_int = Integer.parseInt(id);
		Account account = accountMapper.findById(id_int);
		if( null != account && account.getRoleId()==5) {
			return 1;
		}
		return 0;
	}
	@Override
	public int update(Account account) {
		accountMapper.update(account);
		return 0;
	}
	@Override
	public Account search(int id) {
		// TODO Auto-generated method stub
		Account account = accountMapper.search(id);
		return account;
	}
	
	
}
