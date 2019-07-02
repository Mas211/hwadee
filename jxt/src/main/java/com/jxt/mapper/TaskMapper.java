package com.jxt.mapper;

import java.util.List;

import com.jxt.entity.Task;

public interface TaskMapper {
	// 增
	int insert(Task task);

	// 删
	int delete(int taskId);

	// 查
	Task findById(int taskId);

	// 改
	int update(Task task);
	
	List<Task> findAll();
}
