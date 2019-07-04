package com.jxt.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import com.jxt.entity.Activity;
import com.jxt.service.ActivityService;

@Controller
public class ActivityController {
	@Autowired
	private ActivityService  activityService;
	
	@GetMapping("/activity")
	public String get() {
		return "activity";
	}
	
	@PostMapping("/activity")
	public String add(Activity activity) {
		int rows = activityService.add(activity);
		if(rows != 1) {
			throw new RuntimeException("添加失败");
		}
		return "activity";
	}

}
