package com.jxt.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.jxt.entity.Task;
import com.jxt.service.TaskService;

@Controller
public class TaskController {
	@Autowired
	private TaskService taskService;

	@GetMapping("/homework")
	public String get() {
		return "homework";
	}
	
	@PostMapping("/homework")
	public String add(Task task) {
		System.out.println(task);
		int rows = taskService.add(task);
		
		return "homework";
	}
	
}
