package com.jxt.service;

import com.jxt.entity.Activity;

public interface ActivityService {
	// 增
	int add(Activity activity);

	// 删
	int delete(int activityId);
	
	// 查
	Activity getActivityById(int activityId);

	// 改
	int update(Activity activity);
}
