package com.jxt.mapper;

import java.util.List;

import com.jxt.entity.Activity;
import com.jxt.entity.Message;

public interface ActivityMapper {
	// 增
	int insert(Activity activity);
	int insertMessage(Message message);

	// 删
	int delete(int activityId);
	int deleteMessage(int activityId);

	// 查
	Activity findById(int activityId);
	List<Activity> findAll();
	String findNameById(int pubberId);
	
	// 改
	int update(Activity activity);
}
