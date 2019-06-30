package com.jxt.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jxt.entity.AuthRole;
import com.jxt.mapper.AuthRoleMapper;
import com.jxt.service.AuthRoleService;

@Service
public class AuthRoleServiceImpl implements AuthRoleService {
	@Autowired
	private AuthRoleMapper authRoleMapper;

	@Override
	public int add(AuthRole authRole) {
		// TODO Auto-generated method stub
		int rows = authRoleMapper.insert(authRole);
		if( rows != 1 ) {
			throw new RuntimeException("添加失败");
		}
		return authRole.getAuthRoleId();
	}

	@Override
	public int delete(int authRoleId) {
		// TODO Auto-generated method stub
		return authRoleMapper.delete(authRoleId);
	}

	@Override
	public AuthRole getAuthRoleById(int authRoleId) {
		// TODO Auto-generated method stub
		return authRoleMapper.findById(authRoleId);
	}

	@Override
	public int update(AuthRole authRole) {
		// TODO Auto-generated method stub
		return authRoleMapper.update(authRole);
	}

}
