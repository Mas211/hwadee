package com.jxt.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jxt.entity.Task;
import com.jxt.mapper.TaskMapper;
import com.jxt.service.TaskService;

@Service
public class TaskServiceImpl implements TaskService {
	@Autowired
	private TaskMapper taskMapper;

	@Override
	public int add(Task task) {
		// TODO Auto-generated method stub
		int rows = taskMapper.insert(task);
		if( rows != 1 ) {
			throw new RuntimeException("添加失败");
		}
		return task.getTaskId();
	}

	@Override
	public int delete(int taskId) {
		// TODO Auto-generated method stub
		return taskMapper.delete(taskId);
	}

	@Override
	public Task getTaskById(int taskId) {
		// TODO Auto-generated method stub
		return taskMapper.findById(taskId);
	}

	@Override
	public int update(Task task) {
		// TODO Auto-generated method stub
		return taskMapper.update(task);
	}

}