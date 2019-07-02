package com.jxt.controller;

import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jxt.entity.Message;
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
		if(rows != task.getTaskId()) {
			throw new RuntimeException("添加失败");
		}
		else {
			Message message = new Message();
			message.setTargetId(task.getTaskId());
			message.setSourceId(task.getTaskTeacherId());
			message.setMessageType(2);
			SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
			String dateString = sdf.format(task.getTaskBeginTime());
			message.setTime(dateString);
			message.setMessageContent(task.getTaskContent());
			int row = taskService.addMessage(message);
			if(row != message.getMessageId()) {
				throw new RuntimeException("添加失败");
			}
		}
		return "homework";
	}
	
	@RequestMapping(value = "/listHomework", method = RequestMethod.GET)
	public String list( Model model ) {
		List<Task> tasks = taskService.tasks();
		model.addAttribute("tasks", tasks);
		return "listHomework";
	}
	
	@GetMapping("/listhomework/{taskId}")
	public String get(@PathVariable("taskId") int id, Model model) {
		Task task = taskService.getTaskById(id);
		model.addAttribute("task", task);
		return "listHomework";
	}
	
	
	@DeleteMapping("/homework/{taskId}")
	public String remove(@PathVariable("taskId") int id) {
		
		taskService.delete(id);
		
		return "listHomework";
	}
}
