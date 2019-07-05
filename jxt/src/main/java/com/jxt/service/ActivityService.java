package com.jxt.service;

import java.util.List;

import com.jxt.entity.Activity;
import com.jxt.entity.Message;

public interface ActivityService {
	// 增
	int add(Activity activity);
	int addMessage(Message message);

	// 删
	int delete(int activityId);
	int deleteMessage(int activityId);
	
	// 查
	Activity getActivityById(int activityId);
	List<Activity> activities();

	// 改
	int update(Activity activity);

	
}
