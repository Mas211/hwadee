package com.jxt.service;

import java.util.List;

import com.jxt.entity.Message;
import com.jxt.entity.Task;

public interface TaskService {
	// 增
	int add(Task task);

	// 删
	int delete(int taskId);

	// 查
	Task getTaskById(int taskId);

	// 改
	int update(Task task);
	
	List<Task> tasks();
	
	int addMessage(Message message);
}
