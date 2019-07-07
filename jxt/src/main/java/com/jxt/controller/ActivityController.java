package com.jxt.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jxt.entity.Account;
import com.jxt.entity.Activity;
import com.jxt.entity.Message;
import com.jxt.service.ActivityService;

@Controller
@RequestMapping("/activity")
public class ActivityController {
	@Autowired
	private ActivityService  activityService;
	
	@GetMapping("/activity")
	public String get() {
		return "/activity/activity";
	}
	
	@PostMapping("/activity")
	public String add(Activity activity) {
		int rows = activityService.add(activity);
		if(rows != activity.getActId()) {
			throw new RuntimeException("添加失败");
		}
		else {
			// 发布活动同时向消息中写入
			Message message = new Message();
			message.setActId(activity.getActId());
			message.setSourceId(activity.getActPubberId());
			message.setMessageType(4);
			message.setMessageContent(activity.getActContent());
			int row = activityService.addMessage(message);
			if (row != message.getMessageId()) {
				throw new RuntimeException("添加失败");
			}
		}
		return "/activity/list";
	}

	//查看活动详情
	@GetMapping("/{actId}")
	public String showNews(@PathVariable("actId") int id, Model model) {
		Activity activity = activityService.getActivityById(id);
		int pubber = activity.getActPubberId();
		String nameString = activityService.getNameById(pubber);
		Account user = new Account();
		user.setAccountName(nameString);
		activity .setAccount(user);
		model.addAttribute("activity", activity);
		return "/activity/detail";
	}
	
//	// 查看活动列表
//	@GetMapping("/listactivity")
//	public String listactivity(Model model) {
//		List<Activity> activities = activityService.activities()
//		model.addAttribute("activities", activities);
//		return "/activity/listactivity";
//	}
	
	// 查看活动列表
	@GetMapping("/list")
	public String list(Model model) {
		List<Activity> activities = activityService.activities();
		model.addAttribute("activities", activities);
		return "/activity/list";
	}
	
	// 删除某个活动
	@GetMapping("/listactivity/{actId}")
	public String delete(@PathVariable("actId") int id) {
		activityService.delete(id);
		activityService.deleteMessage(id);
		return "redirect:/activity/listactivity";
	}
}
