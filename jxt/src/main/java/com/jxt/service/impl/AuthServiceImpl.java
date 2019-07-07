package com.jxt.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jxt.entity.Auth;
import com.jxt.mapper.AuthMapper;
import com.jxt.service.AuthService;

@Service
public class AuthServiceImpl implements AuthService {
	@Autowired
	private AuthMapper authMapper;

	@Override
	public int add(Auth auth) {
		// TODO Auto-generated method stub
		int rows = authMapper.insert(auth);
		if( rows != 1 ) {
			throw new RuntimeException("添加失败");
		}
		return auth.getAuthId();
	}

	@Override
	public int delete(int authId) {
		// TODO Auto-generated method stub
		return authMapper.delete(authId);
	}

	@Override
	public List<Auth> getAuthByRoleId(int authId) {
		// TODO Auto-generated method stub
		return authMapper.findByRoleId(authId);
	}

	@Override
	public int update(Auth auth) {
		// TODO Auto-generated method stub
		return authMapper.update(auth);
	}

}
