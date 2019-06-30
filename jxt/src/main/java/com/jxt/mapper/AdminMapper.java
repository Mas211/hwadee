package com.jxt.mapper;

import com.jxt.entity.Admin;

public interface AdminMapper {
	//增
	int insert(Admin admin);
	
	//删
	int delete(int adminId);

	//查
	Admin findById(int adminId);
	
	//改
	int update(Admin admin);
}
