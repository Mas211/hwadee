package com.jxt.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import com.jxt.entity.Task;
import com.jxt.service.TaskService;

@Controller
public class TaskController {
	@Autowired
	private TaskService taskService;

	@GetMapping("/contact")
	public String add(Task task) {
		return "contact";
	}
	
	
}
