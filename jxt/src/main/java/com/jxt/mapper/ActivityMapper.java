package com.jxt.mapper;

import com.jxt.entity.Activity;

public interface ActivityMapper {
	// 增
	int insert(Activity activity);

	// 删
	int delete(int activityId);

	// 查
	Activity findById(int activityId);

	// 改
	int update(Activity activity);
}
