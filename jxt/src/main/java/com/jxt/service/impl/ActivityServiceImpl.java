package com.jxt.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jxt.entity.Activity;
import com.jxt.mapper.ActivityMapper;
import com.jxt.service.ActivityService;

@Service
public class ActivityServiceImpl implements ActivityService {
	@Autowired
	private ActivityMapper activityMapper;

	@Override
	public int add(Activity activity) {
		// TODO Auto-generated method stub
		int rows = activityMapper.insert(activity);
		if( rows != 1 ) {
			throw new RuntimeException("添加失败");
		}
		return activity.getActId();
	}

	@Override
	public int delete(int activityId) {
		// TODO Auto-generated method stub
		return activityMapper.delete(activityId);
	}

	@Override
	public Activity getActivityById(int activityId) {
		// TODO Auto-generated method stub
		return activityMapper.findById(activityId);
	}
	@Override
	public int update(Activity activity) {
		// TODO Auto-generated method stub
		return activityMapper.update(activity);
	}
}
