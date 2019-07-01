package com.jxt.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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
		int rows = taskService.add(task);
		return "homework";
	}
	
	@RequestMapping(value = "/listHomework", method = RequestMethod.GET)
	public String list( Model model ) {
		List<Task> tasks = taskService.tasks();
		model.addAttribute("tasks", tasks);
		return "listHomework";
	}
	
}
