package com.jxt.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jxt.entity.Role;
import com.jxt.mapper.RoleMapper;
import com.jxt.service.RoleService;

@Service
public class RoleServiceImpl implements RoleService {
	@Autowired
	private RoleMapper roleMapper;

	@Override
	public int add(Role role) {
		// TODO Auto-generated method stub
		int rows = roleMapper.insert(role);
		if( rows != 1 ) {
			throw new RuntimeException("添加失败");
		}
		return role.getrId();
	}

	@Override
	public int delete(int roleId) {
		// TODO Auto-generated method stub
		return roleMapper.delete(roleId);
	}

	@Override
	public Role getRoleById(int roleId) {
		// TODO Auto-generated method stub
		return roleMapper.findById(roleId);
	}

	@Override
	public int update(Role role) {
		// TODO Auto-generated method stub
		return roleMapper.update(role);
	}

}
