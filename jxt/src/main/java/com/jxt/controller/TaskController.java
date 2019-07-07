package com.jxt.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jxt.entity.Message;
import com.jxt.entity.Task;
import com.jxt.service.TaskService;

@Controller
@RequestMapping("/homework")
public class TaskController {
	@Autowired
	private TaskService taskService;

	@GetMapping("/publishhomework")
	public String get() {
		return "/homework/publishhomework";
	}
	
	@PostMapping("/publishhomework")
	public String add(Task task) {
		int rows = taskService.add(task);
		if(rows != task.getTaskId()) {
			throw new RuntimeException("添加失败");
		}
		else {
			//将任务数据写入消息中
			Message message = new Message();
			message.setTargetId(task.getTaskId());
			message.setSourceId(task.getTaskTeacherId());
			message.setMessageType(2); 
			message.setTime(new Date());
			message.setMessageContent(task.getTaskContent());
			int row = taskService.addMessage(message);
			if(row != message.getMessageId()) {
				throw new RuntimeException("添加失败");
			}
		}
		return "/homework/publishhomework";
	}
	
	
	//查看作业列表
	@RequestMapping(value = "/listhomework", method = RequestMethod.GET)
	public String list( Model model ) {
		List<Task> tasks = taskService.tasks();
		model.addAttribute("tasks", tasks);
		return "/homework/listhomework";
	}
	
	//删除某个作业
	@GetMapping("/listhomework/{taskId}")
	public String delete(@PathVariable("taskId") int id) {
		taskService.delete(id);
		taskService.deleteMessage(id);
		return "redirect:/homework/listhomework";
	}
	
	//获取更新页面
	@GetMapping("/updatehomework/{taskId}")
	public String updateString(@PathVariable("taskId") int id, Model model) {
		Task task = taskService.getTaskById(id);
		model.addAttribute("task",task);
		return "homework/updatehomework";
	}
	
	//获取报告页面
	@GetMapping("/report/{taskId}")
	public String reportString(@PathVariable("taskId") int id, Model model) {
		Task task = taskService.getTaskById(id);
		model.addAttribute("task",task);
		return "homework/report";
	}
	
	@PostMapping("/report")
	public String report(Task task) {
		int rows = taskService.update(task);
		if(rows != 1) {
			throw new RuntimeException("更新失败");
		}
		return "redirect:/homework/listhomework";
	}
	
	//更新作业
	@PostMapping("/updatehomework")
	public String update(Task task) {
		int rows = taskService.update(task);
		if(rows != 1) {
			throw new RuntimeException("更新失败");
		}
		return "redirect:/homework/listhomework";
	}
}
